
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "authorize_link/version"

Gem::Specification.new do |spec|
  spec.name          = "authorize_link"
  spec.version       = AuthorizeLink::VERSION
  spec.authors       = ["Oz DiGennaro"]
  spec.email         = ["oz@ozdigennaro.com"]

  spec.summary       = %q{produce html for a link if authorized}
  spec.description   = %q{authorize_link(link,controller,action)}
  spec.homepage      = "https://rubygems.org/gems/authorize_link"

  spec.licenses    = ['MIT']

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.

  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "3.7"
end
