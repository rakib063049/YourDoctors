class Availability < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :hospital
  belongs_to :user, :foreign_key => :doctor_id
end
