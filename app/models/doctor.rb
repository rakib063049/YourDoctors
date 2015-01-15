class Doctor < User
  has_many :rates
  has_many :ratings
  has_many :availabilities

  include Tire::Model::Search
  include Tire::Model::Callbacks

  mapping do
    indexes :id, :index => :not_analyzed
    indexes :name
    indexes :title
    indexes :degrees
    indexes :specialist
    indexes :address
    indexes :city, :as => 'city.name'
    indexes :hospital, :as => 'availabilities.collect { |av| [av.hospital.name] }'
  end

  before_destroy do
    Doctor.tire.index.remove self
  end

  def average_rating
    self.ratings.average(:number).to_i
  end

end