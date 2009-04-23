require 'rubygems'
require 'integrity'
require 'mysql'

module Integrity
  class Notifier
    class IntegrityIRC < Notifier::Base

      def self.to_haml
        File.read File.dirname(__FILE__) / "config.haml"
      end

      def deliver!
        my = Mysql.new(@config['host'], @config['user'], @config['pass'], 'supybot')
        st = my.prepare('INSERT INTO message_queue SET user = ?, created = NOW(), message= ?')
        st.execute(@config['name'], short_message)
        st.close
        my.close
      end

      private

      def short_message
        "#{build.project.name}: #{short_message}"
      end

    end
  end
end
