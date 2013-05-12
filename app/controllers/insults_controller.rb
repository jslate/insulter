class InsultsController < ApplicationController

  def index
    @insults = Insult.all
  end

  def create
    Insult.create(insult_params)
    redirect_to insults_path
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