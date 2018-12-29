module LazyNavigator
  class Generator

    SUCCESS_BASH_MSG = 'bash script generated'.freeze
    SUCCESS_RUBY_MSG = 'ruby script generated'.freeze
    BASH_SCRIPT_NAME = 'l'.freeze
    RUBY_SCRIPT_NAME = 'last_project.rb'.freeze
    TEXT_FOR_BASH = "#!/bin/bash\nruby lazy_navigator/last_project.rb\nkill -9 $PPID".freeze
    TEXT_FOR_RUBY = "require 'lazy_navigator'\n\nPATH_TO_LAST_PROJECT = 'RubyGarage/codebreaker <-- change me'
                    \n#IDE = your IDE name for bash, for example VSC = code
                    \nLazyNavigator::Opener.lead(path: PATH_TO_LAST_PROJECT, ide: nil)".freeze

    class << self
      def generate_script(folder = 'lazy_navigator')
        puts SUCCESS_BASH_MSG.green if generate_bash
        puts SUCCESS_RUBY_MSG.green if generate_ruby(folder)
      end

      alias g generate_script

      private

      def generate_bash
        File.new(BASH_SCRIPT_NAME, 'w')
        File.open(BASH_SCRIPT_NAME, 'w').write(TEXT_FOR_BASH)
        add_script_command
      end

      def generate_ruby(folder)
        Dir.mkdir(folder)
        Dir.chdir(folder) do
          File.new(RUBY_SCRIPT_NAME, 'w')
          File.open(RUBY_SCRIPT_NAME, 'w').write(TEXT_FOR_RUBY)
        end
      end

      def add_script_command
        system "chmod +x #{BASH_SCRIPT_NAME}"
      end
    end
  end
end
