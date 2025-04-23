class Api::SessionsController < ApplicationController
    skip_before_action :authorize_request, only: [:create]
    
    def create
      data = params[:session] || params # por si vienen anidados
      user = User.find_by(correo: data[:email])
      if user&.authenticate(data[:password])
        token = encode_token({ user_id: user.id })
        render json: { 
          token: token,
          user: {
            id: user.id,
            email: user.correo,
            name: user.nombre,
            last_name: user.apellido,
            compania_id: user.compania_id,
          }
        }, status: :ok
      else
        render json: { error: 'Credenciales inválidas' }, status: :unauthorized
      end
    end
  
    private
  
    def encode_token(payload)
      payload[:exp] = 12.hours.from_now.to_i # Expiración en 1 hora
      # payload[:exp] = 30.minutes.from_now.to_i # Expiración en 30 minutos
      # payload[:exp] = 1.minutes.from_now.to_i # Expiración en 1 minutos
      # payload[:exp] = 1.day.from_now.to_i # Expiración en 1 día
      JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end
  end
