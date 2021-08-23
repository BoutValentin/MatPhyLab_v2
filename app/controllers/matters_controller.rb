class MattersController < ApplicationController
  def index    
    @matters = Matter.all
    @classe = params[:classe_id].present? ? Grade.find(params[:classe_id]) : nil
    rescue ActiveRecord::RecordNotFound
      params.delete :classe_id
      redirect_to request.path, :params => params
    @matters
  end

  private 

    def matter_params
      params.require(:grade).permit(:classe_id)
    end
end
