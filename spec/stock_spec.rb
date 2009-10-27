require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

import "weka.classifiers.meta.FilteredClassifier"
import "weka.classifiers.trees.J48"
import "weka.filters.unsupervised.attribute.Remove"

describe "Stock data example" do

  before(:all) do
    @training_data = Instances.from_arff(File.dirname(__FILE__) +
                                         "/data/stock_training_data.arff")
    @testing_data  = Instances.from_arff(File.dirname(__FILE__) +
                                         "/data/stock_testing_data.arff")
  end

  it "should know the number of attributes and instances in model" do
    @training_data.num_attributes.should == 4
    @training_data.num_instances.should  == 9
  end

  it "should build and test a classifier" do

    rm = Remove.new                    # Filter for removing samples
    rm.set_attribute_indices("1")      # Remove 1st attribute

    fc = FilteredClassifier.new
    fc.set_filter(rm)
    fc.set_classifier(J48.new)         # A classifier for decision trees
    fc.build_classifier(@training_data) # Train the classifier

    # Test using stock_testing_data.arff:
    @testing_data.to_a[0..2].each do |instance|
      predicted = fc.classify_instance(instance).to_i
      given     = instance.class_value.to_i
      given.should == predicted
      #print "given value: #{@testing_data.class_attribute[given]}"
      #puts  ". predicted value: #{@testing_data.class_attribute[predicted]}"
    end

  end

end
