class BookmarksController < ApplicationController
  before_action :set_bookmark, only: [:show, :edit, :update, :destroy]

  def index
    @bookmark = Bookmark.new
    @categories = Category.all
    @kinds = Kind.all
    @category = Category.new
    @subcategories = Subcategory.all
    @kind_graphic = Kind.group(:name).count()
    @bookmarks_graphic = Kind.group(:name).count()
    @q = Bookmark.ransack(params[:q])
    @bookmarks = @q.result(distinct: true)
  end

  def show
  end

  def new
    @bookmark = Bookmark.new
  end

  def edit
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)

    respond_to do |format|
      if @bookmark.save
        format.html { redirect_to @bookmark, notice: 'El marcador fue creado con exito.' }
        format.js { }
      else
        format.html { render :new }
        format.js { render :index }
      end
    end
  end

  def update
    respond_to do |format|
      if @bookmark.update(bookmark_params)
        format.html { redirect_to @bookmark, notice: 'Bookmark was successfully updated.' }
        format.js { @bookmark }
      else
        format.html { render :edit }
        format.js { render :index }
      end
    end
  end

  def destroy
    @bookmark.destroy
    respond_to do |format|
      format.html { redirect_to bookmarks_url, notice: 'Bookmark was successfully destroyed.' }
      format.js { @bookmark }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookmark
      @bookmark = Bookmark.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bookmark_params
      params.require(:bookmark).permit(:url, :status)
    end
    
    def type_params
      params.require(:type).permit(:theme, :link, :bookmark_id)
    end
end
