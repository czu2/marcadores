class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categories = Category.all
  end

  def show
  end

  def get_api
    @categories = Category.all
    render json: @categories
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.js { }
      else
        format.html { render :new }
        format.js { }
      end
    end
  end

  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.js { }
      else
        format.html { render :edit }
        format.js { }
      end
    end
  end

  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categories_url, notice: 'Category was successfully destroyed.' }
      format.js { }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def category_params
      params.require(:category).permit(:name, :subcategory_id, :bookmark_id, :kind_id)
    end

    def select_bookmark
      @bookmark = Bookmark.all.pluck(:category, :id)
    end

    def select_bookmark
      @kind = Kind.all.pluck(:name, :id)
    end

    def select_subcategory
      @kind = Subcategory.all.pluck(:name, :id)
    end
end
