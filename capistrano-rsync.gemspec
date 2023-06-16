lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'capistrano-rsync-plugin'
  spec.version       = '0.2.1'
  spec.authors       = ['Tom Armitage', 'Stefan Daschek']
  spec.email         = ['tom@infovore.org']

  spec.summary       = 'Plugin for Capitsrano 3.7+ to deploy with rsync'
  spec.description   = 'Plugin for Capistrano 3.7+ to deploy with rsync, based on a Gist by Stefan Daschek.

  Ideally suited to deploying static sites made with static-site-generators.'
  spec.homepage      = 'https://github.com/infovore/capistrano-rsync-plugin'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'capistrano', '>= 3.0.0.pre'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 10.0'
end
