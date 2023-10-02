# frozen_string_literal: true

require 'minitest/autorun'

require "#{File.dirname(__FILE__)}/../lib/frame/version"

# Mini_test file load.
class TestVersion < Minitest::Test
  def test_version
    @standard = Frame::VERSION
    @major = '2.0.0'

    refute_equal(@standard, @major)
    assert_operator(@standard, :<, @major)
  end
end
