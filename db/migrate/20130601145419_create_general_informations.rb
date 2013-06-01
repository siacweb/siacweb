class CreateGeneralInformations < ActiveRecord::Migration
  def up
    create_table :general_informations do |t|
      t.string :name, :null => false
      t.string :main_image_file_name
      t.string :main_image_content_type
      t.integer :main_image_file_size
      t.datetime :main_image_updated_at
      t.string :description
      t.timestamps
    end
  end
  def down
    drop_table :general_informations
  end
end