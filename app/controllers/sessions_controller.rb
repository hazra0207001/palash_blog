class SessionsController < ApplicationController
  def new
    @title="sign in"
  end
  def create
    user = User.authenticate(params[:session][:email],
                             params[:session][:password])
    if user.nil?
# Create an error message and re-render the signin form.
      flash.now[:error] = "Invalid email/password combination."
      @title="sign in"
      redirect_to :action => "new"
    else
      sign_in user
      redirect_to user
# Sign the user in and redirect to the user's show page.

    end
  end
end
