module ApplicationHelper

    def create_title(str)
        cons_str = "MatPhyLab : Votre nouvelle façon de suivre les cours"
        if str.nil? || str.empty?
            cons_str
        else
            "#{str} | #{cons_str}"
        end
    end

    def create_url(classe_id, matter_id)
        if !classe_id.nil? && !matter_id.nil?
            cours_path(params.merge({:classe_id => classe_id, :matter_id => matter_id}).permit(:matter_id, :classe_id))
        elsif classe_id.nil? && !matter_id.nil?
            classe_path(params.merge({:matter_id => matter_id}).permit(:matter_id, :classe_id))
        elsif !classe_id.nil? && matter_id.nil?
            matiere_path(params.merge({:classe_id => classe_id}).permit(:matter_id, :classe_id))
        end
    end
end
