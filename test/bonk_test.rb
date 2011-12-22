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

  def test_bonk_returns_the_value_of_the_block
    assert_equal :funky_monkey, @object.bonk{ :funky_monkey }
  end

  def test_bonk_does_replace_its_callee
    obj_id = @object.object_id
    @object.bonk{ |o| o = :a_funkier_monkey_than_ever }

    assert_equal obj_id, @object.object_id
  end
end

