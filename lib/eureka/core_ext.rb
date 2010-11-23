# Core extensions
class Array

  # Quickly make a FastVector from an array
  def to_fast_vector
    Eureka::FastVector.new(self)
  end

end
