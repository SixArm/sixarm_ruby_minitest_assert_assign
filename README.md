<img src="README.png" width="960" height="120" alt="README" />

# SixArm.com → Ruby → minitest<br> assert_assign assert & expect

<!--header-open-->

[![Gem Version](https://badge.fury.io/rb/sixarm_ruby_minitest_assert_assign.svg)](http://badge.fury.io/rb/sixarm_ruby_minitest_assert_assign)
[![Build Status](https://travis-ci.org/SixArm/sixarm_ruby_minitest_assert_assign.png)](https://travis-ci.org/SixArm/sixarm_ruby_minitest_assert_assign)
[![Code Climate Maintainability](https://api.codeclimate.com/v1/badges/f46781e39020a045cb4b/maintainability)](https://codeclimate.com/github/SixArm/sixarm_ruby_minitest_assert_assign/maintainability)
[![Coverage Status](https://coveralls.io/repos/SixArm/sixarm_ruby_minitest_assert_assign/badge.svg?branch=master&service=github)](https://coveralls.io/github/SixArm/sixarm_ruby_minitest_assert_assign?branch=master)

* Git: <https://github.com/sixarm/sixarm_ruby_minitest_assert_assign>
* Doc: <http://sixarm.com/sixarm_ruby_minitest_assert_assign/doc>
* Gem: <https://rubygems.org/gems/sixarm_ruby_minitest_assert_assign>
* Contact: Joel Parker Henderson, <joel@sixarm.com>
* Project: [changes](CHANGES.md), [license](LICENSE.md), [contributing](CONTRIBUTING.md)

<!--header-shut-->

## Introduction

Minitest extension that compares an `assigns(:symbol)` to an object.

  * If the `assigns(:symbol)` is equal to the object, then the test passes. 

Assert:

   * assert_assign("hello", :hi)

   * refute_assign("hello", :hi)

Spec:

   * expect(:hi).must_assign("hello")

   * expect(:hi).wont_assign("hello")

Based on Minitest.

For docs go to <http://sixarm.com/sixarm_ruby_minitest_assert_assign/doc>

Want to help? We're happy to get pull requests.


<!--install-open-->

## Install

### Gem

To Run this command in your shell or terminal:

    gem install sixarm_ruby_minitest_assert_assign

### Gemfile

To add this gem to your Gemfile:

    gem 'sixarm_ruby_minitest_assert_assign'

### Require

To require the gem in your code:

    require 'sixarm_ruby_minitest_assert_assign'

<!--install-shut-->


## Examples

Example assigns method:

    def assigns(x)
      {a: "alpha", b: "bravo", c: "charlie"}[x]
    end

Example minitest assert:

    def test_me
      assert_assign("alpha", :a)
    end

Example minitest spec:

    it "works" do
      expect(:a).must_assign("alpha")
    end

