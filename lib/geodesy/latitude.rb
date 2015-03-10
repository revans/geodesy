
module Geodesy
  class Latitude
    using FloatExtension

    attr_reader :angle

    def initialize(lat)
      @angle = lat
    end

    def to_radians
      angle.to_radians
    end

  end
end