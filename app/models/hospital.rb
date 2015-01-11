class Hospital < ActiveRecord::Base
  belongs_to :division
  belongs_to :city
  belongs_to :hospital_authority
  belongs_to :user, :foreign_key => :hospital_authority_id
end
