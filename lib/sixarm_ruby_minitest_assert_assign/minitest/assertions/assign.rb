# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module MiniTest::Assertions
 
  ##
  # Succeeds when +expect_value+ and +assigns(:assign_symbol)+ are equal.
  #
  def assert_assign(expect_value, assign_symbol, msg = nil)
    shared_assign(expect_value, assign_symbol, msg)
    actual_value = assigns(assign_symbol)
    assert_equal(expect_value, actual_value, "Expected assigns(#{assign_symbol}) to equal expect_value:#{expect_value.inspect}." + append_msg(msg))
  end

  ##
  # Succeeds when +expect_value+ and +assigns(:assign_symbol)+ are not equal.

  def refute_assign(expect_value, assign_symbol, msg = nil)
    shared_assign(expect_value, assign_symbol, msg)
    actual_value = assigns(assign_symbol)
    refute_equal(expect_value, actual_value, "Expected assigns(#{assign_symbol}) to not equal expect_value:#{expect_value.inspect}." + append_msg(msg))
  end

  private

  def shared_assign(expect_value, assign_symbol, msg = nil)
    refute_nil(expect_value, "Expected expect_value, but got nil." + append_msg(msg))
    refute_nil(assign_symbol, "Expected assign_symbol, but got nil." + append_msg(msg))
    refute_nil(assigns(assign_symbol), "Expected assigns(:#{assign_symbol}), but got nil." + append_msg(msg))
  end

  def append_msg(msg = nil)
    msg ? " #{msg}" : ""
  end

end
