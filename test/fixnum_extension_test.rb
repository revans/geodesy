require 'test_helper'

class Number
  using FixnumExtension

  def initialize(num)
    @num = num
  end

  def to_radians
    @num.to_radians
  end

  def to_meters(yards)
    @num.to_meters(yards)
  end

  def to_yards(meters)
    @num.to_yards(meters)
  end

  def to_feet(yards)
    @num.to_feet(yards)
  end

  def to_inches(feet)
    @num.to_inches(feet)
  end
end

class FixnumExtensionTest < Minitest::Test
  def test_radians
    number = Number.new(1)
    assert_equal 0.017453292519943295, number.to_radians
  end

  def test_to_meters
    number  = Number.new(1)
    expects = 3 * ::Geodesy::YARDS_PER_METER

    assert_equal expects, number.to_meters(3)
  end


  def test_to_yards
    number  = Number.new(1)
    expects = 3 * ::Geodesy::METERS_TO_YARDS

    assert_equal expects, number.to_yards(3)
  end

  def test_to_feet
    number  = Number.new(1)
    expects = 3 * 3

    assert_equal expects, number.to_feet(3)
  end

  def test_to_inches
    number  = Number.new(1)
    expects = 3 * 12

    assert_equal expects, number.to_inches(3)
  end
end
