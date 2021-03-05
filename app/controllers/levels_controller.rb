class LevelsController < ApplicationController
  def show
    @level = {
      id: params[:id],
    }

    locations = Location.where(level_id: params[:id])
    chars = locations.map { |loc| loc.character }
    
    chars.each do |char|
      location = char.locations.find_by(level_id: params[:id])
      @level["#{char.name}"] = {
        x: [location.x_min, location.x_max],
        y: [location.y_min, location.y_max],
      }
    end

    render json: @level
  end
end
