# -*- encoding: utf-8 -*-
# stub: jekyll-timeago 0.14.0 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-timeago".freeze
  s.version = "0.14.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["markets".freeze]
  s.date = "2021-01-30"
  s.description = "A Ruby library to compute distance of dates in words. Originally built for Jekyll, as a Liquid extension. It also supports localization and futures.".freeze
  s.email = ["srmarc.ai@gmail.com".freeze]
  s.executables = ["jekyll-timeago".freeze]
  s.files = ["bin/jekyll-timeago".freeze]
  s.homepage = "https://github.com/markets/jekyll-timeago".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "A date helper to compute distance of dates in words.".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<mini_i18n>.freeze, [">= 0.8.0"])
    s.add_development_dependency(%q<jekyll>.freeze, [">= 1.5"])
    s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<appraisal>.freeze, [">= 0"])
  else
    s.add_dependency(%q<mini_i18n>.freeze, [">= 0.8.0"])
    s.add_dependency(%q<jekyll>.freeze, [">= 1.5"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<appraisal>.freeze, [">= 0"])
  end
end
