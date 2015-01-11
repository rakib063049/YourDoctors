class Hospital < ActiveRecord::Base
  belongs_to :division
  belongs_to :city
  belongs_to :hospital_authority
end
