class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  belongs_to :city
  has_one :image

  accepts_nested_attributes_for :image

  def resource_owner?(current_user)
    self.id == current_user.id
  end

end
