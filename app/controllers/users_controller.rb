class UsersController < ApplicationController
  def new
    @user = User.new

  end

  def create
      @user = User.new(allowed_params)
      if @user.save
        redirect_to root_url, notice: 'Thank you for signing up!'
        session[:user_id] = @user.id
      else
        render :new
      end
    end

  def allowed_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end


  # session[:user_id] = @User.id

end
