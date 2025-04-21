class ApplicationController < ActionController::API
  before_action :authorize_request

  def authorize_request
    header = request.headers['Authorization']
    header = header.split(' ').last if header
    begin
      decoded = JWT.decode(header, Rails.application.credentials.secret_key_base)[0]
      @current_user = User.find(decoded["user_id"])
    rescue JWT::ExpiredSignature
      render json: { error: 'Token expirado' }, status: :unauthorized
    rescue JWT::DecodeError
      render json: { error: 'Token inválido' }, status: :unauthorized
    end
  end
end
