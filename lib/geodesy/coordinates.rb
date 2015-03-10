require_relative 'latitude'
require_relative 'longitude'

module Geodesy
  class Coordinates
    attr_reader :lat, :lng, :altitude, :radius

    def initialize(lat, lng, altitude = nil)
      @lat      = Geodesy::Latitude.new(lat)
      @lng      = Geodesy::Longitude.new(lng)
      @altitude = altitude
      @radius   = Geodesy::EARTH_RADIUS # in kilometers
    end

  end
end
