require 'vips'

module Jekyll
  class PostThumbnailImage < StaticFile
    def initialize(site:, base:, dir:, name:, suffix:, override:, width:, height:)
      @dest_dir = File.join("images", "thumbnail")
      @suffix = suffix
      @width = width
      @height = height
      @override = override

      if @override
        name = @override
      end

      super(site, base, dir, name)
    end

    def destination(dest)
      prefix = @name.delete_suffix(extname)
      name = [prefix, '_', @suffix, extname].join
      File.join(dest, @dest_dir, name)
    end

    def write(dest)
      dest_path = destination(dest)

      return false if File.exist?(dest_path) and !modified?
      StaticFile::mtimes[path] = mtime

      FileUtils.mkdir_p(File.dirname(dest_path))

      if @override
        FileUtils.cp(path, dest_path)
      else
        crop_and_scale(path, dest_path)
      end

      true
    end

    def crop_and_scale(path, dest_path)
      thumb = Vips::Image.thumbnail(path, @width, height: @height, crop: "entropy")
      thumb.write_to_file(dest_path)
    end
  end

  class PostThumbnailGenerator < Generator
    def generate(site)
      thumbnail_config = site.config['thumbnails']
      return unless thumbnail_config

      site.posts.docs.each do |post|
        if post.data.has_key?('thumbnail')

          thumbnail_config.each do |thumbnail_name, thumbnail_settings|
            w = thumbnail_settings['width']
            h = thumbnail_settings['height']

            # Only works if post image is in src/images/ folder.
            post_thumbnail_image =
              PostThumbnailImage.new(
                site: site,
                base: site.source,
                dir: "images",
                name: post.data.dig('thumbnail', 'src'),
                suffix: thumbnail_name,
                override: post.data.dig('thumbnail', 'override', thumbnail_name),
                width: w,
                height: h)
            site.static_files << post_thumbnail_image
          end
        end
      end
    end
  end
end