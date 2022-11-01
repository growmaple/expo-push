lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'expo-push/version'

Gem::Specification.new do |spec|
  spec.name          = 'exponent-server-sdk'
  spec.version       = Exponent::VERSION
  spec.authors       = ['Jesse Ruder', 'Pablo Gomez', 'Mike Taylor']
  spec.email         = ['jesse@sixfivezero.net', 'pablonahuelgomez@gmail.com', 'mike.taylor@growmaple.com']
  spec.summary       = %q{Expo Push}
  spec.description   = %q{Expo Push}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'typhoeus'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
end
