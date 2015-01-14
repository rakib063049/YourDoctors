class Rating < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  belongs_to :user, :foreign_key => :patient_id

end
