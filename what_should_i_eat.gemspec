# frozen_string_literal: true

require_relative "lib/what_should_i_eat/version"

Gem::Specification.new do |spec|
  spec.name = "what_should_i_eat"
  spec.version = WhatShouldIEat::VERSION
  spec.authors = ["amyspencerproject"]
  spec.email = ["amy@spencerproject.com"]

  spec.summary = "This gem fetches a new and inspriring recipe"
  spec.description = "This gem fetches a new recipe from edamam recipe api"
  spec.homepage = "https://github.com/amyspencerproject/what-to-eat-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://github.com/amyspencerproject/what-to-eat-gem"
  spec.metadata["homepage_uri"] = "https://github.com/amyspencerproject/what-to-eat-gem"
  spec.metadata["source_code_uri"] = "https://github.com/amyspencerproject/what-to-eat-gem"
  spec.metadata["changelog_uri"] = "https://github.com/amyspencerproject/what-to-eat-gem"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html

  # makes http request
  spec.add_dependency 'http'
end
