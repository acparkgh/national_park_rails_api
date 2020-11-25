class Api::V1::MytripsController < ApplicationController

  def index
    @mytrips = Mytrip.all
    render json: @mytrips.to_json(include: [:comments])
  end
  
  def show
    @mytrip = Mytrip.find_by(id: params[:id])
    render json: @mytrip.to_json(include: [:comments])
  end

  def create
    @mytrip = Mytrip.find_by(id: params[:id])
    @mytrip = Mytrip.create(
      mytrip_params(
        :user_id, 
        :park_id
      )
    )
    render json: @mytrip
  end

  private

    def mytrip_params(*args)
      params.require(:mytrip).permit(*args)
    end


end
