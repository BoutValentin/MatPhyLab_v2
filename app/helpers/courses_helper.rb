module CoursesHelper

    def get_number_of_skills(course)
        course.skills.count
    end

    def get_number_of_cours(course)
        course.courses.count
    end

    def get_number_of_exercices(course)
        course.exercices.count
    end
end
