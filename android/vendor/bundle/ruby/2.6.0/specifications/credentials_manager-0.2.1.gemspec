# -*- encoding: utf-8 -*-
# stub: credentials_manager 0.2.1 ruby lib

Gem::Specification.new do |s|
  s.name = "credentials_manager".freeze
  s.version = "0.2.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Felix Krause".freeze]
  s.date = "2015-04-02"
  s.description = "Password manager used in fastlane.tools".freeze
  s.email = ["fastlane@krausefx.com".freeze]
  s.homepage = "https://fastlane.tools".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.0.3.1".freeze
  s.summary = "Password manager used in fastlane.tools".freeze

  s.installed_by_version = "3.0.3.1" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<highline>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<colored>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<security>.freeze, [">= 0"])
      s.add_development_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    else
      s.add_dependency(%q<highline>.freeze, [">= 0"])
      s.add_dependency(%q<colored>.freeze, [">= 0"])
      s.add_dependency(%q<security>.freeze, [">= 0"])
      s.add_dependency(%q<bundler>.freeze, [">= 0"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
    end
  else
    s.add_dependency(%q<highline>.freeze, [">= 0"])
    s.add_dependency(%q<colored>.freeze, [">= 0"])
    s.add_dependency(%q<security>.freeze, [">= 0"])
    s.add_dependency(%q<bundler>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.1.0"])
  end
end
