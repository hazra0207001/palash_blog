class UsersController < ApplicationController
  def new
    @title="sign Up"
    @user= User.new
  end
  def create
    #raise params.inspect
   @user = User.new(params[:user])
    if @user.save
      flash[:notice]="Successfully Created"
      redirect_to :action => "show"
    end
  end

  def show
    @user=User.all
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:user][:id])
   if @user.update_attributes(params[:user])
     flash[:notice]="Successfully Edited"
     redirect_to :action => "show"
   end

  end
  def delete
    @user=User.find(params[:id])
    if @user.delete
      flash[:notice]="Successfully Deleted"
      redirect_to :action => "show"
    end
  end
end
