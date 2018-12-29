module LazyNavigator
  class Opener
    STANDART_MSG = 'echo let the rspec to be with you'.freeze
    WEATHER = 'curl https://wttr.in?0'.freeze
    ACCEPT = 'y'.freeze

    class << self
      def lead(path:, ide: nil, command: STANDART_MSG)
        ask_question
        return unless yes?

        Dir.chdir(path) do
          system "gnome-terminal -- sh -c '#{command};#{WEATHER}; bash'"
          system ide if ide
        end
      end

      private

      def yes?
        gets.chomp.downcase == ACCEPT
      end

      def ask_question
        puts ('continue last project? '.cyan + "#{'y'.green}/#{'n'.magenta}".blink.bold).italic
      end
    end
  end
end
