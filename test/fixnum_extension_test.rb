require 'test_helper'

class Number
  using FixnumExtension

  def initialize(num)
    @num = num
  end

  def to_radians
    @num.to_radians
  end

  def to_kilometers(unit)
    @num.to_kilometers(unit)
  end

  def to_miles(unit)
    @num.to_miles(unit)
  end

  def to_meters(unit)
    @num.to_meters(unit)
  end

  def to_yards(unit)
    @num.to_yards(unit)
  end

  def to_feet(unit)
    @num.to_feet(unit)
  end

  def to_inches(unit)
    @num.to_inches(unit)
  end

  def to_centimeters(unit)
    @num.to_centimeters(unit)
  end
end

class FixnumExtensionTest < Minitest::Test
  def test_radians
    number = Number.new(1)
    assert_equal 0.017453292519943295, number.to_radians
  end

  def test_to_kilometers
    number  = Number.new(2)

    expects  = 2 * 100000.0
    assert_equal expects, number.to_kilometers('centimeters')

    expects  = 2 * 39370.1
    assert_equal expects, number.to_kilometers('inches')

    expects = 2 * 3280.84
    assert_equal expects, number.to_kilometers('feet')

    expects = 2 * 1093.61
    assert_equal expects, number.to_kilometers('yards')

    expects = 2 * 1000.0
    assert_equal expects, number.to_kilometers('meters')

    expects = 2 * 0.621371
    assert_equal expects, number.to_kilometers('miles')

    expects = 2
    assert_equal expects, number.to_kilometers('kilometers')
  end



  def test_to_miles
    number  = Number.new(2)

    expects  = 2 * 160934.0
    assert_equal expects, number.to_miles('centimeters')

    expects  = 2 * 63360.0
    assert_equal expects, number.to_miles('inches')

    expects = 2 * 5280.0
    assert_equal expects, number.to_miles('feet')

    expects = 2 * 1760.0
    assert_equal expects, number.to_miles('yards')

    expects = 2 * 1609.34
    assert_equal expects, number.to_miles('meters')

    expects = 2
    assert_equal expects, number.to_miles('miles')

    expects = 2 * 1.60934
    assert_equal expects, number.to_miles('kilometers')
  end

  def test_to_meters
    number  = Number.new(2)

    expects  = 2 * 100
    assert_equal expects, number.to_meters('centimeters')

    expects  = 2 * 39.3701
    assert_equal expects, number.to_meters('inches')

    expects = 2 * 3.28084
    assert_equal expects, number.to_meters('feet')

    expects = 2 * 1.09361
    assert_equal expects, number.to_meters('yards')

    expects = 2
    assert_equal expects, number.to_meters('meters')

    expects = 2 * 0.000621371
    assert_equal expects, number.to_meters('miles')

    expects = 2 * 0.001
    assert_equal expects, number.to_meters('kilometers')
  end


  def test_to_yards
    number  = Number.new(2)

    expects  = 2 * 91.44
    assert_equal expects, number.to_yards('centimeters')

    expects  = 2 * 36
    assert_equal expects, number.to_yards('inches')

    expects = 2 * 3
    assert_equal expects, number.to_yards('feet')

    expects = 2
    assert_equal expects, number.to_yards('yards')

    expects = 2 * 1760.0
    assert_equal expects, number.to_yards('meters')

    expects = 2 * 0.000568182
    assert_equal expects, number.to_yards('miles')

    expects = 2 * 0.0009144
    assert_equal expects, number.to_yards('kilometers')
  end

  def test_to_feet
    number  = Number.new(2)

    expects  = 2 * 30.48
    assert_equal expects, number.to_feet('centimeters')

    expects  = 2 * 12
    assert_equal expects, number.to_feet('inches')

    expects = 2
    assert_equal expects, number.to_feet('feet')

    expects = 2 * 0.333333
    assert_equal expects, number.to_feet('yards')

    expects = 2 * 0.3048
    assert_equal expects, number.to_feet('meters')

    expects = 2 * 0.000189394
    assert_equal expects, number.to_feet('miles')

    expects = 2 * 0.0003048
    assert_equal expects, number.to_feet('kilometers')
  end

  def test_to_inches
    number  = Number.new(2)

    expects  = 2 * 2.54
    assert_equal expects, number.to_inches('centimeters')

    assert_equal 2, number.to_inches('inches')

    expects = 2 * 0.0833333
    assert_equal expects, number.to_inches('feet')

    expects = 2 * 0.0277778
    assert_equal expects, number.to_inches('yards')

    expects = 2 * 0.0254
    assert_equal expects, number.to_inches('meters')

    expects = 2 * 1.5783e-5
    assert_equal expects, number.to_inches('miles')

    expects = 2 * 2.54e-5
    assert_equal expects, number.to_inches('kilometers')
  end


  def test_to_centimeters
    number  = Number.new(2)

    assert_equal 2, number.to_centimeters('centimeters')

    expects  = 2 * 0.393701
    assert_equal expects, number.to_centimeters('inches')

    expects = 2 * 0.0328084
    assert_equal expects, number.to_centimeters('feet')

    expects = 2 * 0.0109361
    assert_equal expects, number.to_centimeters('yards')

    expects = 2 * 0.01
    assert_equal expects, number.to_centimeters('meters')

    expects = 2 * 6.2137e-6
    assert_equal expects, number.to_centimeters('miles')

    expects = 2 * 1e-5
    assert_equal expects, number.to_centimeters('kilometers')
  end

end
