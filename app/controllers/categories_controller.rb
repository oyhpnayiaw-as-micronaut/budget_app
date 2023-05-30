class CategoriesController < ApplicationController
  # GET /categories or /categories.json
  def index
    @categories = Category.where(user: current_user)
  end

  # GET /categories/new
  def new
    @category = Category.new
  end

  # POST /categories or /categories.json
  def create
    @category = Category.new(**category_params, user: current_user)

    respond_to do |format|
      if @category.save
        format.html { redirect_to root_path, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Only allow a list of trusted parameters through.
  def category_params
    params.require(:category).permit(:name, :user_id, :icon)
  end
end
