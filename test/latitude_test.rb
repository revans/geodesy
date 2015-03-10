require 'test_helper'

class LatitudeTest < Minitest::Test

  def lat
    33.26926373135873
  end

  def test_initialization
    assert_equal lat, Geodesy::Latitude.new(lat).angle
  end

  def test_radians
    assert_equal 0.5806581918265441,
        Geodesy::Latitude.new(lat).to_radians
  end

end
