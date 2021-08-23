class Course < ApplicationRecord
  has_one_attached :illustration
  has_many_attached :courses
  has_many_attached :exercices
  has_many_attached :m_res
  belongs_to :grade
  belongs_to :matter
end
