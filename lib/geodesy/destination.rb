#
# Will return a coordinate based on a starting point, the bearing,
# and the distance.
#
module Geodesy
  class Destination
    using FloatExtension

    attr_reader :starting_point, :distance, :bearing, :radius

    #
    # StartingPoint is a Coordinate Object
    # Bearing is a Float Object
    # Distance is an Integer or Float Object - default units: meters
    #
    def initialize(starting_point, bearing, distance)
      @starting_point = starting_point
      @radius         = Geodesy::EARTH_RADIUS
      @bearing        = bearing
      @distance       = distance
    end

    def calculate
      angular_distance    = distance / radius
      bearing_to_radians  = bearing.to_radians
      lat_radians         = starting_point.lat.to_radians
      lng_radians         = starting_point.lng.to_radians

      x = Math.asin(
                      ( Math.sin(lat_radians) * Math.cos(angular_distance) ) +
                      ( Math.cos(lat_radians) * Math.sin(angular_distance) * Math.cos(bearing_to_radians) )
                    )
      y = lng_radians + Math.atan2(
                                   Math.sin(bearing_to_radians) * Math.sin(angular_distance) * Math.cos(lat_radians),
                                   Math.cos(angular_distance) - Math.sin(lat_radians) * Math.sin(x)
                                   )
      # normalize y to -180°..+180°
      z = ( y + 3 * Math::PI ) % ( 2 * Math::PI ) - Math::PI

      Coordinates.new( x.to_degrees, z.to_degrees )
    end

  end
end