require 'shellwords'

require 'web_console/rake/version'

module WebConsole
  module Rake
    module InitializeExtension
      def initialize(binding = TOPLEVEL_BINDING)
        super
        @binding.eval("self.extend(WebConsole::Rake::RakeMethod)")
      end
    end

    module RakeMethod
      def rake(taskname)
        pwd = `pwd`.chomp
        ret = "\n" + `cd #{Rails.root} && bundle exec rake #{taskname}`
        `cd #{Shellwords.shellescape(pwd)}`
        ret.extend(SuppressInspect)
        ret
      end
    end

    module SuppressInspect
      def inspect
        self
      end
    end
  end
end

require 'web_console/rake/railtie'
