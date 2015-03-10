require 'test_helper'

class CoordinatesTest < Minitest::Test
  def lat
    @lat ||= Geodesy::Latitude.new(33.26926373135873)
  end

  def lng
    @lng ||= Geodesy::Longitude.new(-117.2871651469912)
  end

  def test_initialization
    coord = Geodesy::Coordinates.new(33.26926373135873,
                                     -117.2871651469912)

    assert_equal lat.angle, coord.lat.angle
    assert_equal lng.angle, coord.lng.angle
    assert_nil coord.altitude
    assert_equal Geodesy::EARTH_RADIUS, coord.radius
  end

end
