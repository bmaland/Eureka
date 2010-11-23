require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Core Extensions" do

  describe "Array" do

    it "should have to_fast_vector" do
      [1,2,3].to_fast_vector.class.should eq(FastVector)
    end

    it "should have to_matrix" do
      m = [[1,2,3], [4,5,6], [7,8,10]].to_matrix
      m.class.should eq(Matrix)
      m.row_dimension.should eq(3)
      m.column_dimension.should eq(3)
    end

  end

end
