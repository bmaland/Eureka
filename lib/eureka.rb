require "java"

$:.unshift(here = File.dirname(__FILE__))
Dir["#{here}/jar/*.jar"].each { |jar| require jar }
Dir["#{here}/eureka/*.rb"].each { |rb| require rb }

module Eureka

  module Version
    MAJOR = '0'
    MINOR = '1'
    REVISION = '0'
    def self.combined
      [MAJOR, MINOR, REVISION].join('.')
    end
  end

end
