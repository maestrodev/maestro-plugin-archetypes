require 'maestro_plugin'
require 'emoji'

module MaestroDev
  module Plugin
    class EchoWorker < Maestro::MaestroWorker

      def validate_fields
        raise ConfigError, 'Missing message field' if get_field('message').nil?
      end

      def ${taskCommand}
        Maestro.log.info "Starting Echo Worker"
        validate_fields

        emoji = Emoji.create(:iphone)
        write_output "#{emoji.musical_score} #{get_field('message')}\n"

        Maestro.log.info "***********************Completed Echo***************************"
      end

    end
  end
end
