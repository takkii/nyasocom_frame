# frozen_string_literal: true

require 'minitest/autorun'

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Date Unit Test
class MiniUnitLocale < Minitest::Test
  def test_str
    @str_str = "nyasocom_frame is Copyright © 2022 Takayuki Kamiyama."
    assert_equal @str_str, "nyasocom_frame is Copyright © 2022 Takayuki Kamiyama."
  end
end
