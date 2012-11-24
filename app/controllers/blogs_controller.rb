class BlogsController < ApplicationController
  def home
    @title="Blog Home"
  end

  def new
    @blog=Blog.new
  end
  def create
    @blog=Blog.new(params[:blog])
    if @blog.save
      flash[:notice]="Successfully Created"
      redirect_to :action => "home"
    end
  end

  def show
    @title="blos"
    @blog=Blog.all
    #@comment=Comment.all
   # raise @blog.inspect
  end

  def edit
    @blog=Blog.find(params[:id])
  end
  def update
    #raise params[:blog][:id].inspect
    @blog = Blog.find(params[:blog][:id])
    if @blog.update_attributes(params[:blog])
      flash[:notice]="Successfully Updated"
      redirect_to :action => "home"
    end
  end

  def delete
    @blog=Blog.find(params[:id])
    if @blog.destroy
      flash[:notice]="Successfully deleted"
      redirect_to :action => "home"
    end
  end
end
