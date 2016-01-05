class StickiesController < ApplicationController
  def index
    @stickies = Sticky.all
  end

  def create
    sticky = Sticky.create(sticky_params)
    render json: sticky 
  end

  def destroy
    sticky = Sticky.find(params[:id])
    sticky.destroy
    stickies = Sticky.all 
    render json: stickies
  end

  private

  def sticky_params
    params.require(:sticky).permit(:note)
  end
end
