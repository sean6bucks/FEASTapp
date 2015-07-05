class HomeController < ApplicationController
  def index
  end

  def work
  end

  def show
    @project = Project.find_by_displayname(params[:displayname])
  end

end
