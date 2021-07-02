class CommentsController < ApplicationController

  def create
    @page = Page.find(params[:page_id])
    @page.comments.create(comment_params)
    redirect_to @page
  end

  private
    def comment_params
      params.require(:comment).permit(:author, :body)
    end
end
