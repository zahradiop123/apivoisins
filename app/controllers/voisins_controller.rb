class VoisinsController < ApplicationController
  before_action :set_voisin, only: [:show, :edit, :update, :destroy]

  # GET /voisins
  # GET /voisins.json
  def index
    @voisins = Voisin.all
  end

  # GET /voisins/1
  # GET /voisins/1.json
  def show
  end

  # GET /voisins/new
  def new
    @voisin = Voisin.new
  end

  # GET /voisins/1/edit
  def edit
  end

  # POST /voisins
  # POST /voisins.json
  def create
    @voisin = Voisin.new(voisin_params)

    respond_to do |format|
      if @voisin.save
        format.html { redirect_to @voisin, notice: 'Voisin was successfully created.' }
        format.json { render :show, status: :created, location: @voisin }
      else
        format.html { render :new }
        format.json { render json: @voisin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /voisins/1
  # PATCH/PUT /voisins/1.json
  def update
    respond_to do |format|
      if @voisin.update(voisin_params)
        format.html { redirect_to @voisin, notice: 'Voisin was successfully updated.' }
        format.json { render :show, status: :ok, location: @voisin }
      else
        format.html { render :edit }
        format.json { render json: @voisin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /voisins/1
  # DELETE /voisins/1.json
  def destroy
    @voisin.destroy
    respond_to do |format|
      format.html { redirect_to voisins_url, notice: 'Voisin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_voisin
      @voisin = Voisin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def voisin_params
      params.require(:voisin).permit(:name, :phone, :address, :about, :favory)
    end
end
