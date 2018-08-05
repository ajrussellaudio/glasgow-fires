class BuildingsController < ApiController
  # GET /buildings
  def index
    @buildings = Building.all

    render json: @buildings.to_json( only: [ :id, :latitude, :longitude, :name ])
  end

  # GET /buildings/1
  def show
    @building = Building.find(params[:id])
    render json: @building.to_json(
      :except => [:created_at, :updated_at],
      :include => {
        :fires => {
          :except => [:created_at, :updated_at],
          :include => {
            :sources => {
              :except => [:created_at, :updated_at]
            }
          }
        }
      }
    )
  end
end
