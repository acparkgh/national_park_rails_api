class Api::V1::CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments.to_json
  end

  def show
    @comment = Comment.find_by(id: params[:id])
    render json: @comment.to_json
  end

  def create
    # byebug
    @comment = Comment.new
    @comment.mytrip_id = params[:mytrip_id]
    @comment.comment = params[:comment]
    @comment.save

    render json: @comment
  end


  # def create
  #   # byebug
  #   @comment = Comment.find_by(id: params[:id])
  #   @comment = Comment.create(
  #     comment_params(
  #       :mytrip_id, 
  #       :comment
  #     )
  #   )
  #   render json: @comment
  # end

  # private

  #   def comment_params(*args)
  #     params.require(:comment).permit(*args)
  #   end

end
