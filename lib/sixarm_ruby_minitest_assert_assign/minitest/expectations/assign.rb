# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module Minitest::Expectations
  infect_an_assertion :assert_assign, :must_assign
  infect_an_assertion :refute_assign, :wont_assign
end

