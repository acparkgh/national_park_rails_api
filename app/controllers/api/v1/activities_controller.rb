class Api::V1::ActivitiesController < ApplicationController

  def index
    @activities = Activity.all
    render json: @activities.to_json
  end

  def show
    @activity = Activity.find_by(id: params[:id])
    render json: @Activity.to_json
  end

end
