
module Geodesy
  class Longitude
    using FloatExtension

    attr_reader :angle

    def initialize(lng)
      @angle = lng
    end

    def to_radians
      angle.to_radians
    end

  end
end