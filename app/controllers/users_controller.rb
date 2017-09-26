class UsersController < ApplicationController

  def new
  end

  def create
    @user = User.new(name: params[:user][:name], password: params[:user][:password])
    if @user.password == params[:user][:password_confirmation]
      @user.save
      session[:user_id] = @user.id
    else
      redirect_to '/users/new'
    end

  end

end
