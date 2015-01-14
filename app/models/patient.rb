class Patient < User
  has_one :image, foreign_key: :user_id

  accepts_nested_attributes_for :image
end
