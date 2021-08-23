class AddGradeToCourses < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :grade, null: false, foreign_key: true
  end
end
