class SitesController < ApplicationController
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
