require 'rails'

module WebConsole
  module Rake
    class Railtie < Rails::Railtie
      initializer "web_console-rake.initialize" do
        require 'web-console'
        WebConsole::REPL.prepend(WebConsole::Rake::InitializeExtension)
      end
    end
  end
end
