class FiresController < ApplicationController
  before_action :set_fire, only: [:show, :update, :destroy]

  # GET /fires
  def index
    @fires = Fire.all

    render json: @fires
  end

  # GET /fires/1
  def show
    render json: @fire
  end

  # POST /fires
  def create
    @fire = Fire.new(fire_params)

    if @fire.save
      render json: @fire, status: :created, location: @fire
    else
      render json: @fire.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /fires/1
  def update
    if @fire.update(fire_params)
      render json: @fire
    else
      render json: @fire.errors, status: :unprocessable_entity
    end
  end

  # DELETE /fires/1
  def destroy
    @fire.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fire
      @fire = Fire.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def fire_params
      params.require(:fire).permit(:building_name, :street_address, :latitude, :longitude, :date)
    end
end
