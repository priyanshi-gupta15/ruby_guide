# frozen_string_literal: true

require_relative "lib/hello_gem/version"

Gem::Specification.new do |spec|
  spec.name = "hello_gem"
  spec.version = HelloGem::VERSION
  spec.authors = ["priyanshi gupta"]
  spec.email = ["gpriyanshi2005@gmail.com"]

  spec.summary = "A simple gem to greet users"
  spec.description = "This gem prints greetings like 'Hello, Ruby!'"
  
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git appveyor Gemfile])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # hello_gem.gemspec
  spec.files = Dir.glob("lib/**/*.rb") + ["README.md", "LICENSE.txt"]


  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
