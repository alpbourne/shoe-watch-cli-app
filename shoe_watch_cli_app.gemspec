# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shoe_watch_cli_app/version"

Gem::Specification.new do |spec|
  spec.name          = "shoe_watch_cli_app"
  spec.version       = ShoeWatchCliApp::VERSION
  spec.authors       = ["alpbourne"]
  spec.email         = ["alpbourne@gmail.com"]

  spec.summary       = %q{shows users best selling shoes}
  spec.description   = %q{users can see either running or lifestyle shoes for 3 brands}
  spec.homepage      = "https://learn.co"
  spec.license       = "MIT"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "pry"

  spec.add_dependency "nokogiri"
end
