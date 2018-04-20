class SherpasController < ApplicationController
  before_action :set_sherpa, only: [:show, :edit, :update, :destroy]

  # GET /sherpas
  # GET /sherpas.json
  def index
    @sherpas = Sherpa.all
  end

  # GET /sherpas/1
  # GET /sherpas/1.json
  def show
  end

  # GET /sherpas/new
  def new
    @sherpa = Sherpa.new
  end

  # GET /sherpas/1/edit
  def edit
  end

  # POST /sherpas
  # POST /sherpas.json
  def create
    @sherpa = Sherpa.new(sherpa_params)

    respond_to do |format|
      if @sherpa.save
        format.html { redirect_to @sherpa, notice: 'Sherpa was successfully created.' }
        format.json { render :show, status: :created, location: @sherpa }
      else
        format.html { render :new }
        format.json { render json: @sherpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sherpas/1
  # PATCH/PUT /sherpas/1.json
  def update
    respond_to do |format|
      if @sherpa.update(sherpa_params)
        format.html { redirect_to @sherpa, notice: 'Sherpa was successfully updated.' }
        format.json { render :show, status: :ok, location: @sherpa }
      else
        format.html { render :edit }
        format.json { render json: @sherpa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sherpas/1
  # DELETE /sherpas/1.json
  def destroy
    @sherpa.destroy
    respond_to do |format|
      format.html { redirect_to sherpas_url, notice: 'Sherpa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sherpa
      @sherpa = Sherpa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sherpa_params
      params.require(:sherpa).permit(:name, :email, :passward, :password_confirmation, :lcoation)
    end
end
