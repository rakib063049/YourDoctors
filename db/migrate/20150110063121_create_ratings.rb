class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :doctor_id
      t.integer :patient_id
      t.float :number
      t.string :comments

      t.timestamps
    end
  end
end
