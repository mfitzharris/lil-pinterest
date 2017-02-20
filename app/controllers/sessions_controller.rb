class SessionsController < ApplicationController
  def new
    @user
  end

  def create
    @user = User.find_by(email: params[:session][:email])
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @errors = ["Matching record not found, please try again"]
      render 'new'
    end
  end


  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end
end