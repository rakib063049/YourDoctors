class Division < ActiveRecord::Base
  has_many :districts
  has_many :cities
end
