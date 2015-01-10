class ChangeStartEndType < ActiveRecord::Migration
  def change
    change_column :availabilities, :start_at, :string
    change_column :availabilities, :end_at, :string
  end
end
