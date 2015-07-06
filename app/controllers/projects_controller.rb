class ProjectsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find_by_id(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = "Project was successfully added!"
      redirect_to project_path(@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find_by_id(params[:id])
  end

  def update
    @project = Project.find_by_id(params[:id])

    if @project.update_attributes(project_params)
      flash[:notice] = "Project was successfully updated!"
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find_by_id(params[:id])
    @project.destroy
    flash[:alert] = "Project was successfully removed"

    redirect_to projects_path
  end

  private

  def project_params
    params.require(:project).permit(:name, :client, :proccesses, :description, :is_published, :displayname, :thumbnail, :jumbotron, :half_detail1, :half_detail2, :category_ids=>[])
  end

end