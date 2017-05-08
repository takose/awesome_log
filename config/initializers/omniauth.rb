Rails.application.config.middleware.use OmniAuth::Builder do
  provider :jawbone,
    ENV['JAWBONE_TOKEN'],
    ENV['JAWBONE_SECRET'],
    :scope => "basic_read mood_read"
  provider :twitter,
    ENV['TWITTER_TOKEN'],
    ENV['TWITTER_SECRET']
end
