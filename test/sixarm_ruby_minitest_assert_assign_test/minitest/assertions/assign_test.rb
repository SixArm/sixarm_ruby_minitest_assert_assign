# -*- coding: utf-8 -*-
require "sixarm_ruby_minitest_assert_assign"

describe "Minitest" do

  def assigns(x)
    @assigns ||= {:a => :A}
    @assigns[x]
  end

  describe "Assertions" do

    describe "#assert_assign" do

      describe "with typical cases" do

        specify "valid" do
          assert_assign(:A, :a)
        end

        specify "invalid" do
          expect {
            assert_assign(:B, :a)
          }.must_raise MiniTest::Assertion
          begin
            assert_assign(:B, :a)
          rescue MiniTest::Assertion => err
            expect(err.message).must_match(/\bExpected equal\b/)
          end
        end

      end

      describe "with degenerate cases" do

        describe "with `expect_value` nil" do

          specify "raise" do
            expect {
              assert_assign(nil, :a)
            }.must_raise MiniTest::Assertion
            begin
              assert_assign(nil, :a)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected expect_value, but got nil\b/)
            end
          end

        end

        describe "with `assign_symbol` nil" do

          specify "raise" do
            expect {
              assert_assign(:A, nil)
            }.must_raise MiniTest::Assertion
            begin
              assert_assign(:A, nil)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assign_symbol, but got nil\b/)
            end
          end

        end

        describe "with a `assign_symbol` that isn't set" do

          specify "raise" do
            expect {
              assert_assign(:A, :z)
            }.must_raise MiniTest::Assertion
            begin
              assert_assign(:A, :z)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assigns\(:z\), but got nil\b/)
            end
          end

        end

      end

    end

    describe "#refute_assign" do

      describe "with typical cases" do

        specify "valid" do
          refute_assign(:B, :a)
        end

        specify "invalid" do
          expect { 
            refute_assign(:A, :a)
          }.must_raise MiniTest::Assertion
          begin
            refute_assign(:A, :a)
          rescue MiniTest::Assertion => err
            expect(err.message).must_match(/\bExpected not equal\b/)
          end
        end

      end

      describe "with degenerate cases" do

        describe "with `expect_value` nil" do

          specify "raise" do
            expect {
              refute_assign(nil, :a)
            }.must_raise MiniTest::Assertion
            begin
              refute_assign(nil, :a)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected expect_value, but got nil\b/)
            end
          end

        end

        describe "with `assign_symbol` nil" do

          specify "raise" do
            expect {
              refute_assign(:A, nil)
            }.must_raise MiniTest::Assertion
            begin
              refute_assign(:A, nil)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assign_symbol, but got nil\b/)
            end
          end

        end

        describe "with a `assign_symbol` that isn't set" do

          specify "raise" do
            expect {
              refute_assign(:A, :z)
            }.must_raise MiniTest::Assertion
            begin
              refute_assign(:A, :z)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assigns\(:z\), but got nil\b/)
            end
          end

        end

      end

    end

  end 

end
