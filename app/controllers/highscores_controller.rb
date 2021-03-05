class HighscoresController < ApplicationController
  def show
    @times = Highscore.where(level_id: params[:id])
                      .order(time: :asc)
                      .limit(10)

    render json: @times
  end

  def create
    @time = Highscore.create(
      name: params[:name],
      time: params[:time],
      level_id: params[:level_id]
    )
  end

  private

  def highscore_params
    params.require(:highscore).permit(:name, :time, :level_id)
  end
end
