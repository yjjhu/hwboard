class CategorysController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]#在執行特定方法時先值行:set_category

  # GET /categorys
  def index
    #@categorys = Category.page(params[:page]).per(5)
  end

  # GET /categorys/1
  # GET /categorys/1.json
  def show
  end

  # GET /categorys/new
  def new
    @category = Category.new
  end

  # GET /categorys/1/edit
  def edit
  end

  # POST /categorys
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save #如果回傳成功
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /categorys/1
  # PATCH/PUT /categorys/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        #format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        #format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categorys/1
  # DELETE /categorys/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categorys_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:title)
    end
end