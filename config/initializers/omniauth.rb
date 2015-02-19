OmniAuth.config.logger=Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  # provider :twitter, 
  # Rails.application.secrets.omniauth_provider_key, 
  # Rails.application.secrets.omniauth_provider_secret
  provider :facebook, 
  '404372046410688',
  '2c4050f2a38baefad223286ac9d2dd7b',
  scope: "email, publish_stream"
end
