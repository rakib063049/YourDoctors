class AddPhoneToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :phone, :string
    add_column :hospitals, :email, :string
  end
end
