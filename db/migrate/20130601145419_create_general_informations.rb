class CreateGeneralInformations < ActiveRecord::Migration
  def up
    create_table :general_informations do |t|
      t.string :name, :null => false
      t.string :main_image_file_name
      t.string :main_image_content_type
      t.integer :main_image_file_size
      t.datetime :main_image_updated_at
      t.string :description

      #Endereço    #TODO colokr campos certos com nomes certos
      t.string :street, :null => false
      t.integer :number, :null => false
      t.string :complement, :null => false
      t.string :province, :null => false
      t.string :city, :null => false
      t.string :state, :null => false
      t.string :country_bar, :null => false
      t.string :cep

      t.timestamps
    end
  end
  def down
    drop_table :general_informations
  end
end