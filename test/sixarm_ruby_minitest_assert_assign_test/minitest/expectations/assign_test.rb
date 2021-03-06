# -*- coding: utf-8 -*-
require "sixarm_ruby_minitest_assert_assign"

describe "Minitest" do

  def assigns(x)
    @assigns ||= {:a => :A}
    @assigns[x]
  end

  describe "Expectations" do

    describe "#must_assign" do

      describe "with typical cases" do

        specify "valid" do
          expect(:a).must_assign :A
        end

        specify "invalid" do
          expect { 
            expect(:a).must_assign :B
          }.must_raise MiniTest::Assertion
          begin
            expect(:a).must_assign :B
          rescue MiniTest::Assertion => err
            expect(err.message).must_match(/\bExpected equal\b/)
          end
        end

      end

      describe "with degenerate cases" do

        describe "with `expect_value` nil" do

          specify "raise" do
            expect {
              expect(:a).must_assign nil
            }.must_raise MiniTest::Assertion
            begin
              expect(:a).must_assign nil
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected expect_value, but got nil\b/)
            end
          end

        end

        describe "with `assign_symbol` nil" do

          specify "raise" do
            expect {
              expect(nil).must_assign :A
            }.must_raise MiniTest::Assertion
            begin
              expect(nil).must_assign :A
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assign_symbol, but got nil\b/)
            end
          end
          
        end

        describe "with a `assign_symbol` that isn't set" do

          specify "raise" do
            expect {
              expect(:z).must_assign :A
            }.must_raise MiniTest::Assertion
            begin
              expect(:z).must_assign :A
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assigns\(:z\), but got nil\b/)
            end
          end

        end

      end

    end

    describe "#wont_assign" do

      describe "with typical cases" do

        specify "valid" do
          expect(:a).wont_assign(:B)
        end

        specify "invalid" do
          expect { 
            expect(:a).wont_assign(:A)
          }.must_raise MiniTest::Assertion
          begin
            expect(:a).wont_assign(:A)
          rescue MiniTest::Assertion => err
            expect(err.message).must_match(/\bExpected not equal\b/)
          end
        end

      end

      describe "with degenerate cases" do

        describe "with `expect_value` nil" do

          specify "raise" do
            expect {
              expect(:a).wont_assign nil
            }.must_raise MiniTest::Assertion
            begin
              expect(:a).wont_assign nil
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected expect_value, but got nil\b/)
            end
          end

        end

        describe "with `assign_symbol` nil" do

          specify "raise" do
            expect {
              expect(nil).wont_assign(:A)
            }.must_raise MiniTest::Assertion
            begin
              expect(nil).wont_assign(:A)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assign_symbol, but got nil\b/)
            end
          end

        end

        describe "with a `assign_symbol` that isn't set" do

          specify "raise" do
            expect {
              expect(:z).wont_assign(:A)
            }.must_raise MiniTest::Assertion
            begin
              expect(:z).wont_assign(:A)
            rescue MiniTest::Assertion => err
              expect(err.message).must_match(/\bExpected assigns\(:z\), but got nil\b/)
            end
          end

        end

      end

    end

  end 

end
