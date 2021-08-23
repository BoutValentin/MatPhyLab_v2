class CoursesController < ApplicationController
  def index
    @courses = Course.where(grade_id: params[:classe_id], matter_id: params[:matter_id]);
    
    begin
      @matter = Matter.find(params[:matter_id])
    rescue ActiveRecord::RecordNotFound
      params.delete :matter_id
      return redirect_to matiere_path(query_params_permit)
    end

    begin
      @classe = Grade.find(params[:classe_id])
      puts @classe
    rescue ActiveRecord::RecordNotFound
      params.delete :classe_id
      return redirect_to classe_path(query_params_permit)
    end
  end

  def show
    @course = Course.find(params[:id])
    @classe = @course.grade
    @matter = @course.matter
  end

  private 
    def query_params_permit
      params.permit(:matter_id, :classe_id)
    end
end
