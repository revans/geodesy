require 'test_helper'

module Geodesy
  class BearingTest < Minitest::Test

    def tee_point
      @tee_point ||= Coordinates.new(33.27254375003685, -117.2873803284383)
    end

    def green_point
      @green_point ||= Coordinates.new(33.269139395705295, -117.28715699010904)
    end


    def test_initialization
      bearing = Bearing.new(tee_point, green_point)

      assert_equal tee_point, bearing.starting_point
      assert_equal green_point, bearing.ending_point
    end


    def test_calculation
      bearing = Bearing.new(tee_point, green_point)

      assert_equal 176.86038830369012, bearing.calculate
    end

  end
end
