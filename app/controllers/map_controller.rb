class MapController < ApplicationController
  def index
    @current_trends = Trend.most_popular(30)
    @mapped_trend = @current_trends.first
  end

  def show
    render :nothing => true
  end
end

