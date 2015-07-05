class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def show
    @category = Category.find_by_id(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      flash[:notice] = "Categry Created!"
      redirect_to categories_path
    else
      render :new
    end
  end

  def edit
    @category = Category.find_by_id(params[:id])
  end

  def update
    @category = Category.find_by_id(params[:id])

    if @category.update_attributes(category_params)
      flash[:notice] = "Category Updated"
      redirect_to categories_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find_by_id(params[:id])
    @category.destroy
    flash[:alert] = "Category Deleted"

    redirect_to categories_path
  end

  private

  def category_params
    params.require(:category).permit(:name)
  end
end
