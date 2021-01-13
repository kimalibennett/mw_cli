require_relative 'lib/mw_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "mw_cli"
  spec.version       = MwCli::VERSION
  spec.authors       = ["kimalibennett"]
  spec.email         = ["aminbennett@gmail.com"]

  spec.summary       = %q{This gem will alow the user to scrape a list of all of the assault rifles in Warzone!}
  spec.homepage      =  "https://rubygems.org"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] =  "https://rubygems.org"
  

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  # spec.add_dependency "net/http"
  spec.add_dependency "open-uri"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "bundler"
end
