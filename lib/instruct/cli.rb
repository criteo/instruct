require 'instruct'
require 'thor'
module Instruct
  class CLI < Thor

    desc "version", "Print the version of instruct"
    method_option :help, aliases: '-h', type: :boolean,
                  desc: 'Display usage information'

    def version
      if options[:help]
        invoke :help, ['version']
      else
        require 'instruct/commands/version'
        Instruct::Version.new.execute
      end
    end

  end
end