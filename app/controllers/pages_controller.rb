class PagesController < ApplicationController
  def index
    @pages = Page.all
    # render index behind the scenes
    # render :index
  end

  def show
    @page = Page.find(params[:id])
    # render :show
  end

  def new
    @page = Page.new
    # render :new
  end

  def create
    @page = Page.new(pages_params)

    if (@page.save)
      redirect_to pages_path
    else
      render :new
    end
  end

  def edit
    @page = Page.find(params[:id])
    # render :edit
  end

  def update
    @page = Page.find(params[:id])
    if @page.update(pages_params)
      redirect_to pages_path
    else
      render :edit
    end
  end

  def destroy
    @page = Page.find(params[:id]).destroy
    redirect_to pages_path
  end

  private
    def pages_params
      params.require(:page).permit(:title, :author, :body)
    end
end
