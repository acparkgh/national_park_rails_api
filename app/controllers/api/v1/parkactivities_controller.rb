class Api::V1::ParkactivitiesController < ApplicationController

  def index
    @parkactivities = Parkactivity.all
    render json: @parkactivities.to_json(include: [:activities])
  end

  def show
    @parkactivity = parkactivity.find_by(id: params[:id])
    render json: @parkactivity.to_json(include: [:activities])
  end


end
