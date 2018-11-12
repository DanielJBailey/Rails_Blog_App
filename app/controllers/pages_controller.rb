class PagesController < ApplicationController
  def index
    @pages = Page.all
    # render index behind the scenes
  end

  def show
    @page = Page.find(params[:id])
  end

  def new
    @page = Page.new
  end

  def create

  end
end
