class Api::V1::SessionsController < ApplicationController

  def create
    user = User.find_by(email: session_params[:email])
    if user == nil
      render status: :unauthorized
    elsif user.authenticate(session_params[:password])
      render json: UserSerializer.new(user)
    else
      render status: :unauthorized
    end
  end

  private

  def session_params
    params.require(:session).permit(:email, :password)
  end
end
