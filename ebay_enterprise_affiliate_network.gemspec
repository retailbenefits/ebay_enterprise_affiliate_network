 # -*- encoding: utf-8 -*-
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ebay_enterprise_affiliate_network/version"

Gem::Specification.new do |s|
  s.name                  = "ebay_enterprise_affiliate_network"
  s.version               = EBayEnterpriseAffiliateNetwork::VERSION
  s.authors               = ["Razvan Marescu"]
  s.email                 = ["razvan@marescu.net"]
  s.description           = %q{Ruby wrapper for eBay Enterprise Affiliate Network API (formerly PepperJam Exchange API). See http://help.pepperjamnetwork.com/api for details.}
  s.summary               = %q{eBay Enterprise Affiliate Network API}
  s.homepage              = "https://github.com/rmarescu/ebay_enterprise_affiliate_network"
  s.license               = "MIT"
  s.required_ruby_version = ">= 1.9"

  s.files                 = `git ls-files`.split($/)
  s.test_files            = s.files.grep(%r{^(test|s|features)/})
  s.executables           = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  s.require_paths         = ["lib"]

  s.add_dependency "addressable", "~> 2.8", ">= 2.8.0"
  s.add_dependency "htmlentities", "~> 4.3", ">= 4.3.2"
  s.add_dependency "httparty", "~> 0.20"
  s.add_dependency "json", "~> 2.6", ">= 2.6.1"
  s.add_dependency "recursive-open-struct", "~> 1.1"

  s.add_development_dependency "bundler", "~> 2.1"
  s.add_development_dependency "rake"
  s.add_development_dependency "webmock"
  s.add_development_dependency "test-unit"
  s.add_development_dependency "guard-test"
end
