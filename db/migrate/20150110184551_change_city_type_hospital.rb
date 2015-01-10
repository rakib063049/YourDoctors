class ChangeCityTypeHospital < ActiveRecord::Migration
  def change
    change_column :hospitals, :city, :string
  end
end
