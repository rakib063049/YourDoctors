class CreateRates < ActiveRecord::Migration
  def change
    create_table :rates do |t|
      t.float :new_patient
      t.float :old_patient
      t.integer :doctor_id

      t.timestamps
    end
  end
end
