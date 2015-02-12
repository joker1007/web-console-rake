require 'shellwords'

require 'web_console/rake/version'

module WebConsole
  module Rake
    def self.use_spring=(flag)
      @use_spring = flag
    end

    def self.use_spring
      @use_spring
    end

    module InitializeExtension
      def initialize(binding = TOPLEVEL_BINDING)
        super
        @binding.eval("self.extend(WebConsole::Rake::RakeMethod)")
      end
    end

    module RakeMethod
      def rake(taskname, spring: WebConsole::Rake.use_spring)
        cmd = spring ? "spring rake" : "rake"

        pwd = `pwd`.chomp
        ret = "\n" + `cd #{Rails.root} && bundle exec #{cmd} #{taskname}`
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
