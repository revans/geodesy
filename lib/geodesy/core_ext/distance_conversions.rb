
module Geodesy
  module DistanceConversions

    # Assumes degrees to radians
    def to_radians
      self * Math::PI / 180
    end

    # assumes radians to degrees
    def to_degrees
      self * 180  / Math::PI
    end

    # Unit defines what "self" is
    def to_kilometers(unit)
      case unit
      when 'kilometers'
        self

      when 'miles'
        self * 0.621371

      when 'meters'
        self * 1000.0

      when 'yards'
        self * 1093.61

      when 'feet'
        self * 3280.84

      when 'inches'
        self * 39370.1

      when 'centimeters'
        self * 100000.0

      end
    end

    def to_miles(unit)
      case unit
      when 'kilometers'
        self * 1.60934

      when 'miles'
        self

      when 'meters'
        self * 1609.34

      when 'yards'
        self * 1760.0

      when 'feet'
        self * 5280.0

      when 'inches'
        self * 63360.0

      when 'centimeters'
        self * 160934.0

      end
    end

    def to_meters(unit)
      case unit
      when 'kilometers'
        self * 0.001

      when 'miles'
        self * 0.000621371

      when 'meters'
        self

      when 'yards'
        self * 1.09361

      when 'feet'
        self * 3.28084

      when 'inches'
        self * 39.3701

      when 'centimeters'
        self * 100

      end
    end

    def to_yards(unit)
      case unit
      when 'kilometers'
        self * 0.0009144

      when 'miles'
        self * 0.000568182

      when 'meters'
        self * 1760.0

      when 'yards'
        self

      when 'feet'
        self * 3

      when 'inches'
        self * 36

      when 'centimeters'
        self * 91.44

      end
    end

    def to_feet(unit)
      case unit
      when 'kilometers'
        self * 0.0003048

      when 'miles'
        self * 0.000189394

      when 'meters'
        self * 0.3048

      when 'yards'
        self * 0.333333

      when 'feet'
        self

      when 'inches'
        self * 12

      when 'centimeters'
        self * 30.48

      end
    end

    def to_inches(unit)
      case unit
      when 'kilometers'
        self * 2.54e-5

      when 'miles'
        self * 1.5783e-5

      when 'meters'
        self * 0.0254

      when 'yards'
        self * 0.0277778

      when 'feet'
        self * 0.0833333

      when 'inches'
        self

      when 'centimeters'
        self * 2.54

      end
    end


    def to_centimeters(unit)
      case unit
      when 'kilometers'
        self * 1e-5

      when 'miles'
        self * 6.2137e-6

      when 'meters'
        self * 0.01

      when 'yards'
        self * 0.0109361

      when 'feet'
        self * 0.0328084

      when 'inches'
        self * 0.393701

      when 'centimeters'
        self

      end
    end

  end
end
