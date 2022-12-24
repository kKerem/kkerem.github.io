# -*- encoding: utf-8 -*-
# stub: jekyll-thumbnail 0.2.59 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-thumbnail".freeze
  s.version = "0.2.59"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/superterran/jekyll-thumbnail/issues", "changelog_uri" => "https://example.com/user/bestgemever/CHANGELOG.md", "homepage_uri" => "https://superterran.github.io/jekyll-thumbnail/", "source_code_uri" => "https://github.com/superterran/jekyll-thumbnail", "wiki_uri" => "https://github.com/superterran/jekyll-thumbnail/wiki" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Doug Hatcher".freeze]
  s.date = "2018-11-25"
  s.email = ["superterran@gmail.com".freeze]
  s.homepage = "https://superterran.github.io/jekyll-thumbnail/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Provides an image thumbnailer with watermark support.  Adds a liquid tag `thumbnail` with a parmeter to set a resolution.  Can also overlay PNGs overtop for watermarking.".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<jekyll>.freeze, [">= 0"])
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
  else
    s.add_dependency(%q<jekyll>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.10"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
  end
end
