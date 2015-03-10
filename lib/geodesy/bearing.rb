
module Geodesy
  class Bearing
    using FloatExtension

    attr_reader :starting_point, :ending_point

    #
    # start_point is a Geodesy::Coordinates
    # end_point is a Geodesy::Coordinates
    #
    def initialize(start_point, end_point)
      @starting_point = start_point
      @ending_point   = end_point
    end

    def calculate
      start_lat_in_radians  = starting_point.lat.to_radians
      end_lat_in_radians    = ending_point.lat.to_radians
      delta                 = (ending_point.lng.angle - starting_point.lng.angle).to_radians

      # formula: http://mathforum.org/library/drmath/view/55417.html
      y = Math.sin(delta) * Math.cos(end_lat_in_radians)
      x = ( Math.cos(start_lat_in_radians) * Math.sin(end_lat_in_radians) ) -
          ( Math.sin(start_lat_in_radians) * Math.cos(end_lat_in_radians) * Math.cos(delta) )
      z = Math.atan2(y, x)

      ( z.to_degrees + 360 ) % 360
    end

  end
end