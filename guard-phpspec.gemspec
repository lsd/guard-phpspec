# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
#require './lib/guard/phpspec/version'

Gem::Specification.new do |s|
  s.name    = 'guard-phpspec'
  s.version =  '1.0.0' #Guard::PHPSpec::VERSION
  s.authors = ['Isam Machlovi']
  s.email   = 'zenchloride@gmail.com'
  s.homepage  = 'http://github.com/lsd/guard-phpspec'
  s.summary = %q{Guard for projects using PHPSpec}
  s.description = %q{Like the guard-phpunit gem, this is for projects using PHPSpec}
  s.license   = 'MIT'

  s.require_paths = %w{lib lib/guard}
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.add_dependency 'guard', '>= 0.8.8'
  s.add_dependency 'guard-rspec'
  s.add_dependency 'rspec'

  s.rubyforge_project = "guard-phpspec"
end
