DeepL.configure do |config|
  config.auth_key = ENV.fetch('DEEPL_AUTH_KEY')
  config.host = ENV.fetch('BASE_DEEPL_URL')
end
