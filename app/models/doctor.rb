class Doctor < User
  has_many :rates
  has_many :ratings
  has_many :availabilities

  def average_rating
    self.ratings.average(:number).to_i
  end
end
