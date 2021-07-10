class CommentsController < ApplicationController

 
  

  def create
    @page = Page.find(params[:page_id])

     @proverka = @page.comments.create(comment_params)
     if @proverka.valid?
     redirect_to @page
     else
 	 render action: 'new'
     end
   end

  private
    def comment_params
      params.require(:comment).permit(:author, :body )
    end
end
