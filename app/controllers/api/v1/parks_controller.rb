class Api::V1::ParksController < ApplicationController

  def index
    @parks = Park.all
    render json: @parks.to_json( include: { mytrips: {
                                   include: [ :user, :comments] } }
                               )
  end

  def show
    @park = Park.find_by(id: params[:id])
    render json: @park.to_json( include: { mytrips: {
                                  include: [ :user, :comments ] } } 
                              )
  end



end
