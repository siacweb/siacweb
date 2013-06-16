class AddProvisoreColumnsToGeneralInformation < ActiveRecord::Migration
  def up
    add_column :general_informations, :address, :string
    add_column :general_informations, :phone, :string
  end
  def down
    remove_column :general_informations, :address
    remove_column :general_informations, :phone
  end
end