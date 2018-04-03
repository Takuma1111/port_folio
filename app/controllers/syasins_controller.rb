class SyasinsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_syasin, only: [:show, :edit, :update, :destroy]

  # GET /syasins
  # GET /syasins.json
  def index
    @syasins = Syasin.all
  end

  # GET /syasins/1
  # GET /syasins/1.json
  def show
  end

  # GET /syasins/new
  def new
    @syasin = Syasin.new
  end

  # GET /syasins/1/edit
  def edit
  end

  # POST /syasins
  # POST /syasins.json
  def create
    @syasin = Syasin.new(syasin_params)

    respond_to do |format|
      if @syasin.save
        format.html { redirect_to @syasin, notice: 'Syasin was successfully created.' }
        format.json { render :show, status: :created, location: @syasin }
      else
        format.html { render :new }
        format.json { render json: @syasin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /syasins/1
  # PATCH/PUT /syasins/1.json
  def update
    respond_to do |format|
      if @syasin.update(syasin_params)
        format.html { redirect_to @syasin, notice: 'Syasin was successfully updated.' }
        format.json { render :show, status: :ok, location: @syasin }
      else
        format.html { render :edit }
        format.json { render json: @syasin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /syasins/1
  # DELETE /syasins/1.json
  def destroy
    @syasin.destroy
    respond_to do |format|
      format.html { redirect_to syasins_url, notice: 'Syasin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_syasin
      @syasin = Syasin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def syasin_params
      params.require(:syasin).permit(:syasin, :title, :text)
    end
end
