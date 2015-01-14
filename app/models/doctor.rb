class Doctor < User
  has_many :rates
  has_many :ratings
  has_many :availabilities
  has_one :image, foreign_key: :user_id

  accepts_nested_attributes_for :image

  def average_rating
    self.ratings.average(:number).to_i
  end
end
