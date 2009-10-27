# Core extensions
class Array
  def to_fast_vector
    FastVector.new(self)
  end
end

# Eureka
module Eureka
  import "weka.core.Attribute"
  import "weka.core.FastVector"
  import "weka.core.Instances"
end

module Java::WekaCore

  class Attribute
    alias :[] :value
  end

  class FastVector

    include Enumerable

    def initialize(int_or_array=0)
      if int_or_array.kind_of?(Fixnum)
        super(int_or_array)
      else
        super(int_or_array.size)
        int_or_array.each { |arg| self.add_element(arg) }
      end
    end

    alias :length :size
    alias :first :first_element
    alias :last :last_element
    alias :<< :add_element
    alias :[] :element_at
    alias :include? :contains

    def each
      size.times { |i| yield self[i] }
    end

  end

  class Instances

    include Enumerable

    class << self
      # Reads in instances using the standard Weka ARFF format
      def from_arff(path)
        data = self.new(java.io.BufferedReader.new(java.io.FileReader.new(path)))
        data.set_class_index(data.num_attributes - 1)
        return data
      end

      # http://weka.sourceforge.net/doc/weka/core/converters/C45Loader.html
      def from_c45
        raise
      end

      # http://weka.sourceforge.net/doc/weka/core/converters/CSVLoader.html
      def from_csv
        raise
      end
    end

    alias :<< :add
    alias :[] :instance

    def each
      num_instances.times { |i| yield self[i] }
    end

  end

end
