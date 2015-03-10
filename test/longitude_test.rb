require 'test_helper'

class LongitudeTest < Minitest::Test

  def lng
    -117.2871651469912
  end

  def test_initialization
    assert_equal lng,
      Geodesy::Longitude.new(lng).angle
  end

  def test_radians
    assert_equal -2.0470472021453356,
        Geodesy::Longitude.new(lng).to_radians
  end

end
