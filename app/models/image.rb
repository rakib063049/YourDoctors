class Image < ActiveRecord::Base
  belongs_to :doctor
  belongs_to :patient
  belongs_to :hospital_authority

  has_attached_file :photo,
                    :styles => {thumbs: '100x100>', original: '1024x683>'},
                    :url => "/assets/:attachment/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/:attachment/:id/:style/:basename.:extension",
                    :default_url => ":style/missing.png"


  # Validate the attached image is image/jpg, image/png, etc
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
end
