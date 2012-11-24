class BooksController < ApplicationController
  def new
    @title="Add Books"
    #@category=Category.all
  end
  def create
  @book=Book.new(params[:book])
    if @book.save
      flash[:alert]="successfully saved"
      redirect_to :action => "show"
    end
  end
  def show
    @book=Book.all
  end
  def edit
    @book=Book.find(params[:id])
  end
  def update
    @book=Book.find(params[:book][:id])
   if @book.update_attributes(params[:book])
     flash[:notice]="successfully Updated"
     redirect_to :action => "show"
   end
  end
  def delete
    @book=Book.find(params[:id])
    if @book.destroy
      flash[:notice]="Successfully Deleted"
      redirect_to :back
    end
  end
end
