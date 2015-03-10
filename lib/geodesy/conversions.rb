
module Geodesy
  COMPASS_POINTS      = %w[N NE E SE S SW W NW]
  EARTH_RADIUS        = 6371.0
  KM_TO_MI            = 0.621371192
  DEGREES_PER_RADIAN  = 57.2957795
  YARDS_PER_METER     = 1.09361
  METERS_TO_YARDS     = 0.9144

  module Conversions
    extend self

    def kilometers_to_miles
      KM_TO_MI
    end

    def miles_to_kilometers
      1.0 / KM_TO_MI
    end

    def meters_to_yards
      METERS_TO_YARDS
    end

    def yards_to_meters
      YARDS_PER_METER
    end

    def feet_to_yards
      3
    end

    def yards_to_feet
      3
    end

    def feet_to_inches
      12
    end

  end
end