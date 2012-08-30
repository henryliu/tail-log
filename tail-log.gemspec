$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "tail-log/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "tail-log"
  s.version     = TailLog::VERSION
  s.authors     = ["Henry"]
  s.email       = ["henry@23games.com"]
  s.homepage    = "http://www.23games.com"
  s.summary     = "Shows the rails logs in the browser at /logs."
  s.description = "Shows the rails logs in the browser at /logs."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.8"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
