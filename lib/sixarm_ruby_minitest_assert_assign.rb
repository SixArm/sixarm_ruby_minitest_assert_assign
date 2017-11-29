# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

unless defined?(Minitest) then
  # Minitest 5 and MiniTest 4 use different capitalizations.
  module Minitest; end
  MiniTest = Minitest # prevents minitest.rb from requiring back to us
  require "minitest"
end

MiniTest = Minitest unless defined?(MiniTest)

require 'hashdiff'

require 'sixarm_ruby_minitest_assert_assign/minitest/assertions/assign'
require 'sixarm_ruby_minitest_assert_assign/minitest/expectations/assign'
