require 'test_helper'

class GeodesyTest < Minitest::Test
  def starting_point
    [ 33.27254375003685,
      -117.2873803284383 ]
  end

  def ending_point
    [ 33.269139395705295,
      -117.28715699010904]
  end

  def bearing
    176.86038830369012
  end


  def test_bearing
    assert_equal bearing,
      Geodesy.bearing(starting_point,
                      ending_point)
  end


  def test_final_coordinate
    final_coord = Geodesy.final_coordinate(
      ending_point,
      bearing,
      20
    )

    assert_equal 33.08954448933676,
      final_coord.lat.angle

    assert_equal -117.27539907324454,
      final_coord.lng.angle
  end

end
