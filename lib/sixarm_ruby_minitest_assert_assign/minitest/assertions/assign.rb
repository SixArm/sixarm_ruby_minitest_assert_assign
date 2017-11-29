# -*- coding: utf-8 -*-
=begin rdoc
Please see README
=end

module MiniTest::Assertions
 
  ##
  # Succeeds when +expect_value+ and +assigns(:assign_symbol)+ are equal.
  #
  def assert_assign(expect_value, assign_symbol, msg = nil)
    expect_value, actual_value = setup_assign(expect_value, assign_symbol, msg)
    assert_equal(expect_value, actual_value, "Expected equal." +  result_msg(expect_value, assign_symbol, actual_value, msg))
  end

  ##
  # Succeeds when +expect_value+ and +assigns(:assign_symbol)+ are not equal.

  def refute_assign(expect_value, assign_symbol, msg = nil)
    expect_value, actual_value = setup_assign(expect_value, assign_symbol, msg)
    refute_equal(expect_value, actual_value, "Expected not equal." + result_msg(expect_value, assign_symbol, actual_value, msg))
  end

  private

  def setup_assign(expect_value, assign_symbol, msg = nil)
    refute_nil(expect_value, "Expected expect_value, but got nil." + append_msg(msg))
    refute_nil(assign_symbol, "Expected assign_symbol, but got nil." + append_msg(msg))
    actual_value = assigns(assign_symbol)
    refute_nil(actual_value, "Expected assigns(:#{assign_symbol}), but got nil." + append_msg(msg))
    return expect_value, actual_value
  end

  def append_msg(msg = nil)
    msg ? " #{msg}" : ""
  end

  def result_msg(expect_value, assign_symbol, actual_value, msg = nil)
    " Assign symbol::#{assign_symbol}. Expect value:#{expect_value.inspect}. Actual value:#{actual_value.inspect}." + append_msg(msg)
  end

end
