require 'instruct'
require 'instruct/command'


module Instruct
  class Version < Command
    def execute
      puts "Instruct version : #{Instruct::VERSION}"
    end
  end
end
