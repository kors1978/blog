class PagesController < ApplicationController
  before_action :authenticate_admin!, only: [:new]
  def index
  	@page = Page.order('created_at DESC').page(params[:page]).per(6)
  end

  def new
  @page = Page.new
  end

  def show
  	@page = Page.find(params[:id])
  end

  def create
  	@page = Page.new(iz_stroki)
  	
    if @page.save
  	redirect_to @page
    else
    render action: 'new'
    end
  end
  
  private
  
  def iz_stroki
  	params.require(:page).permit(:text, :image)
  end
end
