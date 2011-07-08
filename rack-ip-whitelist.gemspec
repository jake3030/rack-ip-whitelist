# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rack-ip-whitelist/version"

Gem::Specification.new do |s|
  s.name        = "rack-ip-whitelist"
  s.version     = Rack::Ip::Whitelist::VERSION
  s.authors     = ["Jake Varghese"]
  s.email       = ["jake3030@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ip Whitelist middleware}
  s.description = %q{Rack middleware to quickly add ip whitelisting to your app}

  s.rubyforge_project = "rack-ip-whitelist"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
