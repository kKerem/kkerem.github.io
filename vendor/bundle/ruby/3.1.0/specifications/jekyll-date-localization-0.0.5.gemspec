# -*- encoding: utf-8 -*-
# stub: jekyll-date-localization 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "jekyll-date-localization".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["krupkat".freeze]
  s.date = "2022-11-25"
  s.extra_rdoc_files = ["README.md".freeze]
  s.files = ["README.md".freeze]
  s.homepage = "https://github.com/krupkat/jekyll-date-localization".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Liquid filter for custom locale date formatting.".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<i18n>.freeze, ["~> 1.0"])
  else
    s.add_dependency(%q<i18n>.freeze, ["~> 1.0"])
  end
end
