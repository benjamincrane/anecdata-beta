OmniAuth.config.logger=Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :twitter, 
  # Rails.application.secrets.omniauth_provider_key, 
  # Rails.application.secrets.omniauth_provider_secret
  provider :facebook, 
  ENV['APP_ID'],
  ENV['APP_SECRET'],
  scope: "email, publish_stream"
end
