class CommentsController < ApplicationController
  def create
    Comment.create(params[:comment])
    redirect_to :root
  end
end
