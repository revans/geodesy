require 'test_helper'

module Geodesy
  class DestinationTest < Minitest::Test

    def starting_point
      @starting_points ||= Coordinates.new(33.269139395705295,
                                           -117.28715699010904)
    end

    def bearing
      176.86038830369012
    end


    def test_initialization
      dest = Destination.new(starting_point, bearing, 20)

      assert_equal starting_point,  dest.starting_point
      assert_equal bearing,         dest.bearing
      assert_equal 20,              dest.distance
      assert_equal 6371.0,          dest.radius
    end


    def test_calculate
      dest = Destination.new(starting_point, bearing, 20)

      assert_equal 33.08954448933676,   dest.calculate.lat.angle
      assert_equal -117.27539907324454, dest.calculate.lng.angle
    end

  end
end
