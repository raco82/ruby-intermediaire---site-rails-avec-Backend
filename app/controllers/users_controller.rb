class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(name: params['user_name'], bio: params['bio'])
    if @user.save
      redirect_to user_path(@user.name)
    else
      render 'new'
    end
  end

  def show
    @user = User.find_by_name(params[:name])
  end
end
