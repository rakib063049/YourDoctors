class Hospital < ActiveRecord::Base
  belongs_to :division
  belongs_to :city
end
