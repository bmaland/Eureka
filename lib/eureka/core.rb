import "weka.core.FastVector"
import "weka.core.Instances"

module Java::WekaCore

  class Attribute
    def [](i)
      value(i)
    end
  end

  class FastVector
    def self.make(*args)
      fv = FastVector.new(args.length)
      args.each { |arg| fv.add_element(arg) }
      return fv
    end
  end

  class Instances

    include Enumerable

    class << self
      def from_path(file_path)
        data = self.new(java.io.BufferedReader.new(java.io.FileReader.new(file_path)))
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

    def <<(i)
      add(i)
    end

    def [](i)
      instance(i)
    end

    def each
      num_instances.times { |i| yield self[i] }
    end

    def to_s
      to_summary_string
    end

  end

end
