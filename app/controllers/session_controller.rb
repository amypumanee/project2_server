class SessionController < ApplicationController
  def new
    
  end
  def show
  end
  def create
    respond_to do |format|
      @user = User.find_by :email => params[:email]
      if @user.present? && @user.authenticate(params[:password])
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created }
      else
        format.html { render :new }
        format.json { render json: "Invalid email or password", status: :unprocessable_entity }
      end
    end
  end
end
