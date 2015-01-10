class Availability < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :hospital
end
