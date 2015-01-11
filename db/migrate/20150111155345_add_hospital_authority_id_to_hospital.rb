class AddHospitalAuthorityIdToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :hospital_authority_id, :integer
  end
end
