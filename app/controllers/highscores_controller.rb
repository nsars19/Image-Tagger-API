class HighscoresController < ApplicationController
  def show
    @times = Highscore.where(level_id: params[:level_id])
                      .order(time: :asc)
                      .limit(10)

    render json: @times
  end
end
