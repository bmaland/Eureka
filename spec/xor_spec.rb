require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "XOR example" do

  before(:all) do
    @training_data = Instances.from_arff(File.dirname(__FILE__) +
                                         "/data/xor.arff")
  end

  it "should build and test a classifier" do
    # Uses the IBk K-nearest neighbours classifier to solve the XOR problem.
    # http://weka.sourceforge.net/doc/weka/classifiers/lazy/IBk.html
    ibk = IBk.new

    ibk.build_classifier(@training_data)

    # FALSE, FALSE
    @training_data.class_attribute[ibk.classify_instance(@training_data[0])].should ==
      "FALSE"

    # FALSE, TRUE
    @training_data.class_attribute[ibk.classify_instance(@training_data[1])].should ==
      "TRUE"
  end

end
