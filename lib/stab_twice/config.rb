require 'yaml'

module StabTwice
  module Config
    class << self

      def settings
        @settings || load_yaml
      end

      private

      def load_yaml
        @settings ||= YAML.load(config_file)
      end

      def config_file
        raise "config/settings.yml config file missing" unless File.exists?('config/settings.yml')
        @config_file ||= File.read("config/settings.yml")
      end

    end
  end
end
