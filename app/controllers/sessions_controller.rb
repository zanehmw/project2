class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user
      if user.authenticate(params[:password])
        session[:user_id] = user.id
        flash[:notice] = "Logged in as #{user.username}"
        redirect_to restaurants_path
      else
        render :new and return
      end
    else
      render :new and return
    end
  end


def destroy
  session[:user_id] = nil
  redirect_to welcome_index_path, notice: "Signed Out!"
end

end
