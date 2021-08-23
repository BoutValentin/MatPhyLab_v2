class AddMatterToCourses < ActiveRecord::Migration[6.1]
  def change
    add_reference :courses, :matter, null: false, foreign_key: true
  end
end
