class CommentsController < ApplicationController
  def new
    @title="comments"


  end
  def create
    #raise params.inspect
    @comment=Comment.new(params[:comment])
    if @comment.save
      flash[:notice]="Successfully Saved"
      redirect_to :controller => "blogs",:action => "show"
    end

  end
end
