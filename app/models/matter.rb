class Matter < ApplicationRecord
  has_one_attached :illustration

  alias_attribute :matter_id, :id

end
