class CategoriesController < ApplicationController
  def new
    @title="Add New category"

  end
  def create
    @category=Category.new(params[:category])
    if @category.save
      flash[:alert]="Successfully Saved"
      redirect_to :action => "show"
    end
  end
  def show
    @category=Category.all
  end
end
