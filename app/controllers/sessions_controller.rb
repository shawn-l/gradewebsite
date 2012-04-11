class SessionsController < ApplicationController
  def new
  end

  def create
  	if user = User.authenticate(params[:stuNo],params[:password])
  		session[:user_id] = user.id
  		redirect_to  homepage_url
  	else
  		redirect_to login_url,:alert => "Invalid user/password combination"
  	end
  end

  def destriy
  	session[:user_id] = nil
  	redirect_to homepage_url
  end

end
