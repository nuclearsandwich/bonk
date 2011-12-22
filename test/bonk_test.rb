require "minitest/autorun"
require "./lib/bonk"

class BonkTest < MiniTest::Unit::TestCase
  def test_object_responds_to_bonk
    assert_respond_to Object.new, :bonk
  end
end

