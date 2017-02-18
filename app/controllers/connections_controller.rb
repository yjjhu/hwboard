class ConnectionsController < ApplicationController
  before_action :set_connection, only: [:show, :edit, :update, :destroy]#在執行特定方法時先值行:set_connection

  # GET /connections
  def index
    #@connections = Connection.page(params[:page]).per(5)
  end

  # GET /connections/1
  # GET /connections/1.json
  def show
  end

  # GET /connections/new
  def new
    @connection = Connection.new
  end

  # GET /connections/1/edit
  def edit
  end

  # POST /connections
  def create
    @connection = Connection.new(connection_params)

    respond_to do |format|
      if @connection.save #如果回傳成功
        format.html { redirect_to @connection, notice: 'Connection was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /connections/1
  # PATCH/PUT /connections/1.json
  def update
    respond_to do |format|
      if @connection.update(connection_params)
        format.html { redirect_to @connection, notice: 'Connection was successfully updated.' }
        #format.json { render :show, status: :ok, location: @connection }
      else
        format.html { render :edit }
        #format.json { render json: @connection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /connections/1
  # DELETE /connections/1.json
  def destroy
    @connection.destroy
    respond_to do |format|
      format.html { redirect_to connections_url, notice: 'Connection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_connection
      @connection = Connection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def connection_params
      params.require(:connection).permit(:post_id, :category_id)
    end
end