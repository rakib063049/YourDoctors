class CreateHospitals < ActiveRecord::Migration
  def change
    create_table :hospitals do |t|
      t.string :name
      t.string :address
      t.integer :city
      t.integer :thana_id
      t.integer :district_id
      t.string :cuntry

      t.timestamps
    end
  end
end
