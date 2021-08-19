module ApplicationHelper

    def create_title(str)
        cons_str = "MatPhyLab : Votre nouvelle façon de suivre les cours"
        if str.nil? || str.empty?
            cons_str
        else
            "#{str} | #{cons_str}"
        end
    end
end
