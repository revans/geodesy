require "geodesy/version"
require 'geodesy/conversions'
require 'geodesy/core_ext/float_extension'
require 'geodesy/coordinates'
require 'geodesy/bearing'
require 'geodesy/destination'


module Geodesy
  extend self

  #
  # starting is an array of [ lat, lng ]
  # ending is an array of [ lat, lng ]
  #
  ### Returns
  #
  # It returns a floating point number
  #
  def bearing(starting, ending)
    Bearing.new(
      Coordinates.new(*starting),
      Coordinates.new(*ending)
    ).calculate
  end


  #
  # starting is an array of [ lat, lng ]
  # bearing is a float
  # distance is an integer or float - units: meters
  #
  ### Returns
  #
  # It returns a Coordinates Object
  #
  def final_coordinate(starting, bearing, distance = 10)
    Destination.new(
      Coordinates.new(*starting),
      bearing,
      distance
    ).calculate
  end

end