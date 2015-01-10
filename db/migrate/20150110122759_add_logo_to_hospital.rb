class AddLogoToHospital < ActiveRecord::Migration
  def change
    add_attachment :hospitals, :logo
    add_column :hospitals, :division_id, :string
  end
end
