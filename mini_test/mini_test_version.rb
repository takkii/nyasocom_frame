# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/reporters'
require 'frame/version'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Mini_test file load.
class TestVersion < Minitest::Test
  def test_version
    @standard = Frame::VERSION
    @major = '2.0.0'

    refute_equal(@standard, @major)
    assert_operator(@standard, :<, @major)
  end
end