class FiresController < ApiController
  before_action :set_fire, only: [:show, :update, :destroy]

  # GET /fires
  def index
    @fires = Fire.all
    render json: @fires.to_json(include: :news_sources)
  end

  # GET /fires/1
  def show
    render json: @fire
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
