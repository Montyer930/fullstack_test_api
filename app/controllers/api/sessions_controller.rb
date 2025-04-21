class Api::SessionsController < ApplicationController
    skip_before_action :authorize_request, only: [:create]
    
    def create
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        token = encode_token({ user_id: user.id })
        #puts "Generated token: #{token}"
        render json: { token: token}, status: :ok
      else
        render json: { error: 'Credenciales inválidas' }, status: :unauthorized
      end
    end
  
    private
  
    def encode_token(payload)
      payload[:exp] = 1.hours.from_now.to_i # Expiración en 1 hora
      # payload[:exp] = 30.minutes.from_now.to_i # Expiración en 30 minutos
      # payload[:exp] = 1.minutes.from_now.to_i # Expiración en 1 minutos
      # payload[:exp] = 1.day.from_now.to_i # Expiración en 1 día
      JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end
  end
