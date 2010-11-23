# Core extensions
class Array

  # Quickly make a FastVector from an array
  def to_fast_vector
    Eureka::FastVector.new(self)
  end

  # [[1,2,3], [4,5,6], [7,8,9]].to_matrix produces the following matrix
  # 1 2 3
  # 4 5 6
  # 7 8 9
  def to_matrix
    # Uses the Matrix(double[] vals, int m) constructor by packing the array by
    # transposition.
    Eureka::Matrix.new(self.transpose.flatten.to_java(:double), self.length)
  end

end
