require "minitest/autorun"
require "./lib/bonk"

class BonkTest < MiniTest::Unit::TestCase
  def setup
    @object = Object.new
  end

  def test_object_responds_to_bonk
    assert_respond_to @object, :bonk
  end

  def test_bonk_passes_in_its_callee
    temp_obj = :didnt_run
    @object.bonk do |obj|
      temp_obj = obj
    end

    assert_equal @object, temp_obj
  end
end

