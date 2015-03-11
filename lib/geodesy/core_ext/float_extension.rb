require_relative 'distance_conversions'

module FloatExtension
  refine Float do
    include ::Geodesy::DistanceConversions
  end
end
