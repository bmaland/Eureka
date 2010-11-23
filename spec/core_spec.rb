require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Weka Core" do

  describe "FastVector" do
    before(:all) do
      @fv = FastVector.new(("a".."z").to_a)
    end

    it "should have Ruby-like aliases"do
      @fv.length.should == @fv.size
      @fv.first.should == @fv.first_element
      @fv.last.should == @fv.last_element
    end

    it "should instanciate from an array" do
      FastVector.new(("a".."z").to_a).length.should == 26
    end

    it "should know if it includes a specific element" do
      @fv.include?("a").should be_true
      @fv.include?("1").should be_false
      @fv[0].should == "a"
    end
  end

  describe "Matrix" do
    before(:all) do
      @m = [[1,2,3],[4,5,6],[7,8,10]].to_matrix
    end

    it "should be possible to get a specific element" do
      @m[0,0].should eq(1)
      @m[2,2].should eq(10)
    end

    it "should be possible to get a subrow" do
      @m[0].to_s.should eq(" 1 2 3\n")
    end
  end

end
