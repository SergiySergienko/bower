class RedisConfig

  def self.get_conf_params
    yml_conf = YAML.load_file(File.expand_path(Rails.root + "config/redis_conf.yml", __FILE__))
    raise "Redis config for this enviroment missing" unless yml_conf.has_key?(Rails.env)
    yml_conf[Rails.env].symbolize_keys!
  end

end