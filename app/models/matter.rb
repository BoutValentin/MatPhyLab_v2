class Matter < ApplicationRecord
  has_one_attached :illustration

  alias_attribute :matter_id, :id

  has_many :courses
  has_many :grade, through: :courses
end
