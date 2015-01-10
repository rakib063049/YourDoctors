class Hospital < ActiveRecord::Base
  belongs_to :division
  belongs_to :district
  belongs_to :thana

end
