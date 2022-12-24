# -*- encoding: utf-8 -*-
# stub: objective_elements 1.1.2 ruby lib

Gem::Specification.new do |s|
  s.name = "objective_elements".freeze
  s.version = "1.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Robert Buchberger".freeze]
  s.bindir = "exe".freeze
  s.date = "2020-01-16"
  s.email = ["robert@buchberger.cc".freeze]
  s.homepage = "https://github.com/rbuchberger/objective_elements".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.3.26".freeze
  s.summary = "Build HTML with simple ruby.".freeze

  s.installed_by_version = "3.3.26" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_development_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_development_dependency(%q<pry>.freeze, ["~> 0.11.3"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_development_dependency(%q<rspec>.freeze, ["~> 3.8.0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.79"])
    s.add_development_dependency(%q<solargraph>.freeze, ["~> 0.38"])
  else
    s.add_dependency(%q<bundler>.freeze, ["~> 1.16"])
    s.add_dependency(%q<pry>.freeze, ["~> 0.11.3"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.8.0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.79"])
    s.add_dependency(%q<solargraph>.freeze, ["~> 0.38"])
  end
end
