class HomeController < ApplicationController
  def index
    @projects = Project.all
  end

  def work
    @projects = Project.all.reverse_order
    @categories = Category.all
    @first_slide = Project.find_by_is_slide(true)
  end

  def show
    @project = Project.find_by_displayname(params[:displayname])
  end

  def contact
  end

end
