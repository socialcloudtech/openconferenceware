$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_conference_ware/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "open_conference_ware"
  s.version     = OpenConferenceWare::VERSION
  s.authors     = ["Igal Koshevoy", "Reid Beels", "Kirsten Comandich", "Audrey Eschright", "et al."]
  s.email       = ["reid@opensourcebridge.org"]
  s.homepage    = "http://openconferenceware.org"
  s.summary     = "An open source web application for events and conferences. "
  s.description = "OpenConferenceWare is an open source web application for events and conferences. This customizable, general-purpose platform provides proposals, sessions, schedules, tracks and more."

  s.require_paths = ["lib"]
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")

  cert = File.expand_path("~/.ssh/gem-private_key_ocw.pem")
  if File.exist?(cert)
    s.signing_key = cert
    s.cert_chain = ["gem-public_cert.pem"]
  end

  s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "rails-observers", "~> 0.1.2"

  # Authentication
  s.add_dependency "omniauth", "~> 1.1.4"

  s.add_dependency "hashery"

  s.add_dependency 'RedCloth'
  s.add_dependency 'aasm'
  s.add_dependency 'acts-as-taggable-on'
  s.add_dependency 'color'
  s.add_dependency 'comma',               '~> 3.0'
  s.add_dependency 'gchartrb',            '~> 0.8.0' #, :require => 'google_chart'
  s.add_dependency 'paperclip'
  s.add_dependency 'vpim'
  s.add_dependency 'nokogiri'
  s.add_dependency 'prawn'
  s.add_dependency 'dalli'
  s.add_dependency "dynamic_form"
  s.add_dependency 'rinku' #, :require => 'rails_rinku'

  # Assets
  s.add_dependency 'jquery-rails'
  s.add_dependency 'sass-rails', " ~> 4.0.0"
  s.add_dependency 'uglifier'

  # Development
  s.add_development_dependency "sqlite3"

  # Testing
  s.add_development_dependency 'omniauth-openid'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'cucumber-rails'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'cadre'
  s.add_development_dependency 'coveralls'
end
