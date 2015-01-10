class CreateAvailabilities < ActiveRecord::Migration
  def change
    create_table :availabilities do |t|
      t.integer :hospital_id
      t.datetime :start_at
      t.datetime :end_at
      t.string :day_off
      t.integer :doctor_id

      t.timestamps
    end
  end
end
