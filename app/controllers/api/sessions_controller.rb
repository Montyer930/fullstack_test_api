class Api::SessionsController < ApplicationController
    skip_before_action :authorize_request, only: [:create]
    
    def create
      user = User.find_by(email: params[:email])
      if user&.authenticate(params[:password])
        token = encode_token({ user_id: user.id })
        puts "Generated token: #{token}"
        render json: { token: token, user: user }, status: :ok
      else
        render json: { error: 'Credenciales inválidas' }, status: :unauthorized
      end
    end
  
    private
  
    def encode_token(payload)
        JWT.encode(payload, Rails.application.credentials.secret_key_base)
    end
  end
  