class FiresController < ApiController

  # GET /fires
  def index
    @fires = Fire.all
    render json: @fires.to_json(
      include: {
        news_sources: {
          only: [:publication, :headline, :url]
        }
      },
      except: [:created_at, :updated_at]
    )
  end
  
end
