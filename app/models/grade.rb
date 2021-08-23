class Grade < ApplicationRecord
  has_one_attached :illustration
  
  alias_attribute :classe_id, :id

  has_many :courses
  has_many :matter, through: :courses
end
