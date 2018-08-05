class AllController < ApiController
  def index
    render json: Building.all.to_json(
      :except => [:created_at, :updated_at],
      :include => :fires
    )
  end
end
