class AddAvatarToUser < ActiveRecord::Migration
  def change
    add_attachment :users, :avatar
    add_column :users, :division_id, :string
  end
end
