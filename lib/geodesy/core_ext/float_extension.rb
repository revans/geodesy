
module FloatExtension
  refine Float do

    # Assumes degrees to radians
    def to_radians
      self * Math::PI / 180
    end

    # assumes radians to degrees
    def to_degrees
      self * 180  / Math::PI
    end

    def to_kilometers(miles)
      miles * Geodesy::Conversions.miles_to_kilometers
    end

    def to_miles(kilometers)
      kilometers * Geodesy::Conversions.kilometers_to_miles
    end

    def to_meters(yards)
      yards * Geodesy::Conversions.yards_to_meters
    end

    def to_yards(meters)
      meters * Geodesy::Conversions.meters_to_yards
    end

    def to_feet(yards)
      yards * Geodesy::Conversions.yards_to_feet
    end

    def to_inches(feet)
      feet * Geodesy::Conversions.feet_to_inches
    end

  end
end