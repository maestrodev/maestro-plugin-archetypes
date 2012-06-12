require 'maestro_agent'
require 'emoji'

module MaestroDev
  class EchoWorker < Maestro::MaestroWorker

    def validate_fields
      set_error('')

      raise 'Invalid Field Set, Missing message' if get_field('message').nil?
    end

    def ${taskCommand}
      begin
        Maestro.log.info "Starting Echo Worker"
        validate_fields

        emoji = Emoji.create(:iphone)
        write_output "#{emoji.musical_score} #{get_field('message')}\n"
      rescue Exception => e
        set_error(e.message)
      end

      Maestro.log.info "***********************Completed Echo***************************"
    end

  end
end
