require 'rubygems'
require 'integrity'
require 'mysql'

module Integrity
  class Notifier
    class IntegritySupybot < Notifier::Base

      def self.to_haml
        File.read File.dirname(__FILE__) / "config.haml"
      end

      def deliver!
        my = Mysql.new(@config['host'], @config['user'], @config['pass'], @config['db'])
        st = my.prepare('INSERT INTO message_queue SET user = ?, created = ' +
                        'NOW(), message= ?')
        st.execute(@config['name'], irc_message)
        st.close
        my.close
      end

      private

      def irc_message
        if build.successful?
          "#{build.project.name}: #{short_message} :)"
        else
          "[1;31m#{build.project.name}: #{short_message}[0m :(("
        end
      end

    end
  end
end
