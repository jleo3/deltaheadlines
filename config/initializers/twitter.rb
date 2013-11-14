TWITTER_CLIENT = Twitter::REST::Client.new do |config|
  config.consumer_key       = ""
  config.consumer_secret    = ""
  # config.oauth_token        = ""
  # config.oauth_token_secret = ""
  config.connection_options[:request] = {:open_timeout=>20, :timeout=>40}
end