require 'test_helper'

class Point
  using FloatExtension

  attr_reader :lat, :lng

  def initialize(point)
    @lat, @lng = *point
  end

  def lat_to_radians
    lat.to_radians
  end

  def lng_to_radians
    lng.to_radians
  end


  def to_degrees(radians)
    radians.to_degrees
  end

end

class FloatExtensionTest < Minitest::Test
  def point
    @point ||= Point.new([33.26926373135873, -117.2871651469912])
  end

  def test_initialization
    assert_equal 33.26926373135873,   point.lat
    assert_equal -117.2871651469912,  point.lng
  end


  def test_radians
    assert_equal 0.5806581918265441,  point.lat_to_radians
    assert_equal -2.0470472021453356, point.lng_to_radians
  end


  def test_degrees
    assert_equal 33.269263731358734, point.to_degrees(point.lat_to_radians)
    assert_equal point.lng, point.to_degrees(point.lng_to_radians).round(13)
  end

end
