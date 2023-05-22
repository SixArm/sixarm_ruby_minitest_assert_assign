# -*- coding: utf-8 -*-

Gem::Specification.new do |s|

  s.name           = "sixarm_ruby_minitest_assert_assign"
  s.summary        = "SixArm.com → Ruby → Minitest → assert_assign assert & expect"
  s.description    = "A Minitest assertion & expectation to compare the assigns(:symbol) method, which is typical of Rails controllers"
  s.version        = "2.0.0"

  s.author         = "SixArm"
  s.email          = "sixarm@sixarm.com"
  s.homepage       = "http://sixarm.com/"
  s.licenses       = ["Apache-2.0", "Artistic-2.0", "BSD-3-Clause", "GPL-2.0", "GPL-3.0", "MIT", "MPL-2.0"]

  s.signing_key    = "/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-private.pem"
  s.cert_chain     = ["/opt/key/sixarm/sixarm-ruby-gem-signing-20230504-public.pem"]

  s.platform       = Gem::Platform::RUBY
  s.require_path   = "lib"


  s.files = [
    "Rakefile",
    "lib/sixarm_ruby_minitest_assert_assign.rb",
    "lib/sixarm_ruby_minitest_assert_assign/minitest/assertions/assign.rb",
    "lib/sixarm_ruby_minitest_assert_assign/minitest/expectations/assign.rb",
  ]

  s.test_files = [
    "test/sixarm_ruby_minitest_assert_assign_test.rb",
    "test/sixarm_ruby_minitest_assert_assign_test/minitest/assertions/assign_test.rb",
    "test/sixarm_ruby_minitest_assert_assign_test/minitest/expectations/assign_test.rb",
  ]

  s.add_dependency("hashdiff", ">= 1.0.0", "< 2");
  s.add_development_dependency("rake", ">= 12.3.3", "< 13")

  s.add_development_dependency("minitest", ">= 5.12", "< 6")
  s.add_development_dependency("yard", ">= 0.9.20", "< 2");
  s.add_development_dependency("simplecov", ">= 0.18.0", "< 2")

  s.required_ruby_version = ">= 2.5"

end
