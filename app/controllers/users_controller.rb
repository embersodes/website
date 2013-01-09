class UsersController < ApplicationController

  def create
    omniauth = request.env["omniauth.auth"]
    @user = User.find_by_github_uid(omniauth["uid"]) || User.create_from_omniauth(omniauth)
    cookies.permanent[:token] = @user.token
    redirect_to_target_or_default root_url, :notice => "Signed in successfully"
  end
  
  def login
    session[:return_to] = params[:return_to] if params[:return_to]
    #if Rails.env.development?
    #  cookies.permanent[:token] = User.first.token
    #  redirect_to_target_or_default root_url, :notice => "Signed in successfully"
    #else
      redirect_to "/auth/github"
    #end
  end
  
  
end
