# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

Gem::Specification.new do |s|
  s.name = "cache_mailer"
  s.rubyforge_project = ""
  s.version = 0.1

  s.authors = ["Jarra Schirris"]
  s.email = ["suhrawardi@gmail.com"]
  s.description = "cache email deliveries"

  s.files = Dir.glob("{lib,test}/**/*") + %w(README.rdoc)
  s.extra_rdoc_files = ["README.rdoc"]

  s.homepage = "http://github.com/suhrawardi/cache_mailer"
  s.rdoc_options = ["--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.3.6"
  s.summary = "Add the ability to cache action mailer deliveries"

  s.add_runtime_dependency("actionmailer", [">= 3.0.1"])
end
