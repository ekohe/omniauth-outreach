# frozen_string_literal: true

require_relative "lib/omniauth/outreach/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-outreach"
  spec.version = OmniAuth::Outreach::VERSION
  spec.authors = ["Tiaki YEN"]
  spec.email = ["tiaki@ekohe.com"]

  spec.summary = "OmniAuth Oauth2 strategy for outreach.io."
  spec.description = "OmniAuth Oauth2 strategy for outreach.io - https://developers.outreach.io/api/oauth/"
  spec.homepage = "https://github.com/ekohe/omniauth-outreach"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.5"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end

  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Rubocop
  spec.add_development_dependency "rubocop"
  # For debug binding.pry
  spec.add_development_dependency "pry"

  spec.add_dependency "omniauth", '~> 2.0.4'
  spec.add_dependency "omniauth-oauth2", '~> 1.8.0'
end
