class InsultsController < ApplicationController

  def index
    @insults = Insult.all
    respond_to do |format|
      format.html
      format.json { render json: @insults }
    end
  end

  def create
    insult = Insult.create(insult_params)
    render json: insult
  end

  def up_thumb
    Thumb.create insult_id: params[:id], up: true
    render json: {count: Insult.find(params[:id]).up_thumbs}
  end

  def down_thumb
    Thumb.create insult_id: params[:id], up: false
    render json: {count: Insult.find(params[:id]).down_thumbs}
  end

  private

     def insult_params
       params.require(:insult).permit(:name, :adjective, :noun, :smell_like)
     end

end