class Grade < ApplicationRecord
  has_one_attached :illustration
  
  alias_attribute :classe_id, :id
end
