require "thesslstore/version"
require "thesslstore/client"

module Thesslstore
  CONFIG_PATH = File.expand_path("~/.thesslstore")

  def self.config
    @config ||= load_config
  end

  def self.load_config
    File.exists?(Thesslstore::CONFIG_PATH) ? YAML.load_file(Thesslstore::CONFIG_PATH) : {}
  end
end
