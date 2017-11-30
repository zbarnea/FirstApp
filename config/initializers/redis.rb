# config/initlializers/redis.rb

# $redis = Redis::Namespace.new("my_app", :redis => Redis.new)

$redis = Redis.new(:host => 'localhost', :port => 6379)