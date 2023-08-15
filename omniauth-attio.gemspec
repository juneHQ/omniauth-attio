
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "omniauth-attio/version"

Gem::Specification.new do |spec|
  spec.name          = "omniauth-attio"
  spec.version       = OmniAuth::Attio::VERSION
  spec.authors       = ["Ferruccio Balestreri"]
  spec.email         = ["ferruccio@june.so"]

  spec.summary       = %q{OmniAuth strategy for Attio}
  spec.description   = %q{OmniAuth strategy for Attio}
  spec.homepage      = "https://github.com/juneHQ/omniauth-attio"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.6'
  spec.add_development_dependency "bundler", "~> 2.2.33"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "rspec", "~> 3.0"
end
