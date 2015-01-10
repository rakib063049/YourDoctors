class Doctor < User
  has_many :rates
  has_many :availabilities
end
