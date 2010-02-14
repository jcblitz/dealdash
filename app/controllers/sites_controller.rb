class SitesController < ApplicationController
  def index
    @sites = Site.all
  end
  
  def new
    @site = Site.new
  end
  
  def create
    @site = Site.new(params[:site])
    
    if @site.save
      redirect_to @site
    else
      render :action => "new"
    end
  end
  
  def show
    @site = Site.find(params[:id])
  end
  
end
