class GradesController < ApplicationController
  def index    
    @classes = Grade.all
    @matter = params[:matter_id].present? ? Matter.find(params[:matter_id]) : nil
    rescue ActiveRecord::RecordNotFound
      params.delete :matter_id
      redirect_to request.path, :params => params
    @classes
  end

  private 

    def matter_params
      params.require(:matter).permit(:matter_id)
    end
end
