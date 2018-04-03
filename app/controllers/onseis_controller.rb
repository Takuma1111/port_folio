class OnseisController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_onsei, only: [:show, :edit, :update, :destroy]

  # GET /onseis
  # GET /onseis.json
  def index
    @onseis = Onsei.all
  end

  # GET /onseis/1
  # GET /onseis/1.json
  def show
  end

  # GET /onseis/new
  def new
    @onsei = Onsei.new
  end

  # GET /onseis/1/edit
  def edit
  end

  # POST /onseis
  # POST /onseis.json
  def create
    @onsei = Onsei.new(onsei_params)

    respond_to do |format|
      if @onsei.save
        format.html { redirect_to @onsei, notice: 'Onsei was successfully created.' }
        format.json { render :show, status: :created, location: @onsei }
      else
        format.html { render :new }
        format.json { render json: @onsei.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onseis/1
  # PATCH/PUT /onseis/1.json
  def update
    respond_to do |format|
      if @onsei.update(onsei_params)
        format.html { redirect_to @onsei, notice: 'Onsei was successfully updated.' }
        format.json { render :show, status: :ok, location: @onsei }
      else
        format.html { render :edit }
        format.json { render json: @onsei.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onseis/1
  # DELETE /onseis/1.json
  def destroy
    @onsei.destroy
    respond_to do |format|
      format.html { redirect_to onseis_url, notice: 'Onsei was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onsei
      @onsei = Onsei.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onsei_params
      params.require(:onsei).permit(:onsei, :title, :text)
    end
end
