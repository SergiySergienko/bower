$r_conf = RedisConfig.get_conf_params
$redis = Redis.new(:host => $r_conf[:host], :port => $r_conf[:port])