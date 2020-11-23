class Api::V1::ParksController < ApplicationController

  def index
    @parks = Park.all
    render json: @parks.to_json
  end

  def show
    @park = Park.find_by(id: params[:id])
    render json: @park
  end

end
