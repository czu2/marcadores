class TypesController < ApplicationController
    before_action :set_type, only: [:show, :edit, :update, :destroy]
    before_action :select_bookmark, only: [:new, :edit]
    # GET /types
    # GET /types.json
    def index
      @types = Type.all
    end
  
    # GET /types/1
    # GET /types/1.json
    def show
    end
  
    def get_api
      @types = Type.all
      render json: @types
    end
  
    # GET /types/new
    def new
      @type = Type.new
    end
  
    # GET /types/1/edit
    def edit
    end
  
    # POST /types
    # POST /types.json
    def create
      @type = Type.new(type_params)
  
      respond_to do |format|
        if @type.save
          format.html { redirect_to @type, notice: 'Type was successfully created.' }
          format.js { @type }
        else
          format.html { render :new }
          format.js { render :index }
        end
      end
    end
  
    # PATCH/PUT /types/1
    # PATCH/PUT /types/1.json
    def update
      respond_to do |format|
        if @type.update(type_params)
          format.html { redirect_to @type, notice: 'Type was successfully updated.' }
          format.js { render :show, status: :ok, location: @type }
        else
          format.html { render :edit }
          format.js { render json: @type.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /types/1
    # DELETE /types/1.json
    def destroy
      @type.destroy
      respond_to do |format|
        format.html { redirect_to bookmarks_url, notice: 'Type was successfully destroyed.' }
        format.json { @type}
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_type
        @type = Type.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def type_params
        params.require(:type).permit(:theme, :link, :bookmark_id)
      end
  
      def select_bookmark
        @bookmark = Bookmark.all.pluck(:url, :id)
      end
  end
  