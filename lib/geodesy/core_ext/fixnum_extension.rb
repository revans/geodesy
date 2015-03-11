require_relative 'distance_conversions'

module FixnumExtension
  refine Fixnum do
    include ::Geodesy::DistanceConversions
  end
end
