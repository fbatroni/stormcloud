# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','stormcloud','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'stormcloud'
  s.version = Stormcloud::VERSION
  s.author = 'Fritz G. Batroni'
  s.email = 'fritz.g.batroni@gmail.com'
  s.homepage = 'https://fritzbatroni.wordpress.com/'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A description of your project'
  s.files = `git ls-files`.split("
")
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','stormcloud.rdoc']
  s.rdoc_options << '--title' << 'stormcloud' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'stormcloud'
  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.13.0')
  s.add_runtime_dependency('fog', '~> 1.28.0')
end
