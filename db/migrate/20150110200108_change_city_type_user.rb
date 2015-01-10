class ChangeCityTypeUser < ActiveRecord::Migration
  def change
    change_column :users, :city, :string
  end
end
