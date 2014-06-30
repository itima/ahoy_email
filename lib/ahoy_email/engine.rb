module AhoyEmail
  class Engine < ::Rails::Engine
    engine_name 'ahoy_email_engine'

    initializer "ahoy_email" do |app|
      AhoyEmail.secret_token = app.config.respond_to?(:secret_key_base) ? app.config.secret_key_base : app.config.secret_token
      if AhoyEmail.secret_token.blank?
      	AhoyEmail.secret_token = Rails.application.secrets.secret_key_base
      end
    end

  end
end
