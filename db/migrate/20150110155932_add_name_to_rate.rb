class AddNameToRate < ActiveRecord::Migration
  def change
    add_column :rates, :title, :string
  end
end

