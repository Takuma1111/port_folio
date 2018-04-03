class DougasController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_douga, only: [:show, :edit, :update, :destroy]

  # GET /dougas
  # GET /dougas.json
  def index
    @dougas = Douga.all
  end

  # GET /dougas/1
  # GET /dougas/1.json
  def show
  end

  # GET /dougas/new
  def new
    @douga = Douga.new
  end

  # GET /dougas/1/edit
  def edit
  end

  # POST /dougas
  # POST /dougas.json
  def create
    @douga = Douga.new(douga_params)

    respond_to do |format|
      if @douga.save
        format.html { redirect_to @douga, notice: 'Douga was successfully created.' }
        format.json { render :show, status: :created, location: @douga }
      else
        format.html { render :new }
        format.json { render json: @douga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dougas/1
  # PATCH/PUT /dougas/1.json
  def update
    respond_to do |format|
      if @douga.update(douga_params)
        format.html { redirect_to @douga, notice: 'Douga was successfully updated.' }
        format.json { render :show, status: :ok, location: @douga }
      else
        format.html { render :edit }
        format.json { render json: @douga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dougas/1
  # DELETE /dougas/1.json
  def destroy
    @douga.destroy
    respond_to do |format|
      format.html { redirect_to dougas_url, notice: 'Douga was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_douga
      @douga = Douga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def douga_params
      params.require(:douga).permit(:douga, :title, :text)
    end
end
