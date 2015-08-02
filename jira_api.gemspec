# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jira_api/version'

Gem::Specification.new do |spec|
  spec.name          = "jira_api"
  spec.version       = JiraApi::VERSION
  spec.authors       = ["kinezu"]
  spec.email         = ["test@test.test"]

  spec.summary       = "First iteration of my jira-api helper"
  spec.description   = "First iteration of my jira-api helper"
  spec.homepage      = "https://github.com/kinezu/jira_api.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'json'
  spec.add_dependency 'faraday'

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
