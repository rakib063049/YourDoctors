class HospitalAuthority < User
  has_many :hospitals
  has_one :image, foreign_key: :user_id

  accepts_nested_attributes_for :image
end
