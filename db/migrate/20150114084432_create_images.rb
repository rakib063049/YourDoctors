class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :hospital_id
      t.string  :photo_file_name
      t.string  :photo_content_type
      t.integer :photo_file_size

      t.timestamps
    end
  end
end
