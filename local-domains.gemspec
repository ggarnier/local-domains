lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'local-domains/version'

Gem::Specification.new do |gem|
  gem.name          = "local-domains"
  gem.version       = LocalDomains::VERSION
  gem.authors       = ["Guilherme Garnier"]
  gem.email         = ["guilherme.garnier@gmail.com"]
  gem.summary       = "Maps a list of domains to an ip address"
  gem.description   = "A simple tool to help keeping your /etc/hosts file up-to-date"
  gem.homepage      = "https://github.com/ggarnier/local-domains"
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "ghost", "1.0.0.pre.2"
  gem.add_dependency "sys-host", "0.6.2"
end
