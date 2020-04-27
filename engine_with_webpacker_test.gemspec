$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "engine_with_webpacker_test/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "engine_with_webpacker_test"
  spec.version     = EngineWithWebpackerTest::VERSION
  spec.authors     = ["Guillermo Moreno"]
  spec.email       = ["guillermo@michelada.io"]
  spec.homepage    = "http://not-found.com"
  spec.summary     = "Webpacker with Rails engine this a test example"
  spec.description = "This a example of how to integrate webpacker within to Rails Engine"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib,public}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.2", ">= 6.0.2.1"

  spec.add_development_dependency "sqlite3"
end
