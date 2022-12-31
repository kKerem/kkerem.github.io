# frozen_string_literal: true
set :bundle_config, { deployment: false }

source "https://rubygems.org"

gem "webrick", "~> 1.7"
gem "rouge", "~> 3.26"
gem "kramdown-parser-gfm", "~> 1.1"
gem "jekyll", "~> 4.2"
gem "jekyll-imagemagick"
gem "mini_magick"
gem "jekyll-sass-converter", "~> 2.0"
gem 'wdm', '>= 0.1.0' if Gem.win_platform?
group :jekyll_plugins do
  gem "jekyll-last-modified-at"
  gem "jekyll-date-localization"
  gem 'jekyll-sitemap'
  gem 'jekyll-timeago', '~> 0.14.0'
  gem 'jekyll-lazy-load-image', require: 'jekyll-lazy-load-image/auto-execution'
  gem 'jekyll-thumbnails', git: 'https://github.com/Emilostuff/jekyll-thumbnails'
  gem 'jekyll_picture_tag', '~> 2.0'
end

group :development do
    gem "jekyll-watch", "~> 2.2"
end
