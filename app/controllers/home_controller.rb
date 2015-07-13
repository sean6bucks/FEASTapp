class HomeController < ApplicationController
  def index
    @projects = Project.all
  end

  def work
    @projects = Project.all.reverse_order
    @categories = Category.all
    @first_slide = Project.find_by_is_published_and_is_slide(true, true)
  end

  def show
    @published_project_ids = Project.published.pluck(:id)
    
    @project = Project.find_by_displayname(params[:displayname])
    @previous = Project.where("id < ?", params[:id]).order(:id).first   
    @next = Project.where("id > ?", params[:id]).order(:id).first 
    
  end

  def contact
  end

end
