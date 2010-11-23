require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Core Extensions" do

  describe "Array" do

    it "should have to_fast_vector" do
      [1,2,3].to_fast_vector.class.should eq(FastVector)
    end

  end

end
