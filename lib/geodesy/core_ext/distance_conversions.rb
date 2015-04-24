
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
        self * 1.60934

      when 'meters'
        self * 0.001

      when 'yards'
        self * 0.0009144

      when 'feet'
        self * 0.0003048

      when 'inches'
        self * 2.54e-5

      when 'centimeters'
        self * 1e-5

      when 'millimeters'
        self * 1e-6

      end
    end

    def to_miles(unit)
      case unit
      when 'kilometers'
        self * 0.621371

      when 'miles'
        self

      when 'meters'
        self * 0.000621371

      when 'yards'
        self * 0.000568182

      when 'feet'
        self * 0.000189394

      when 'inches'
        self * 1.5783e-5

      when 'centimeters'
        self * 6.21371e-6

      when 'millimeters'
        self * 6.2137e-7

      end
    end

    def to_meters(unit)
      case unit
      when 'kilometers'
        self * 1000

      when 'miles'
        self * 1609.34

      when 'meters'
        self

      when 'yards'
        self * 0.9144

      when 'feet'
        self * 0.3048

      when 'inches'
        self * 0.0254

      when 'centimeters'
        self * 0.01

      when 'millimeters'
        self * 0.001

      end
    end

    def to_yards(unit)
      case unit
      when 'kilometers'
        self * 1093.61

      when 'miles'
        self * 1760

      when 'meters'
        self * 1.09361

      when 'yards'
        self

      when 'feet'
        self * 0.333333

      when 'inches'
        self * 0.0277778

      when 'centimeters'
        self * 0.0109361

      when 'millimeters'
        self * 0.00109361

      end
    end

    def to_feet(unit)
      case unit
      when 'kilometers'
        self * 3280.84

      when 'miles'
        self * 5280

      when 'meters'
        self * 3.28084

      when 'yards'
        self * 3

      when 'feet'
        self

      when 'inches'
        self * 0.0833333

      when 'centimeters'
        self * 0.0328084

      when 'millimeters'
        self * 0.00328084


      end
    end

    def to_inches(unit)
      case unit
      when 'kilometers'
        self * 39370.1

      when 'miles'
        self * 63360

      when 'meters'
        self * 39.3701

      when 'yards'
        self * 36

      when 'feet'
        self * 12

      when 'inches'
        self

      when 'centimeters'
        self * 0.393701

      when 'millimeters'
        self * 0.0393701

      end
    end


    def to_centimeters(unit)
      case unit
      when 'kilometers'
        self * 100000

      when 'miles'
        self * 160934

      when 'meters'
        self * 100

      when 'yards'
        self * 91.44

      when 'feet'
        self * 30.48

      when 'inches'
        self * 2.54

      when 'centimeters'
        self

      when 'millimeters'
        self * 0.1

      end
    end

  end
end
