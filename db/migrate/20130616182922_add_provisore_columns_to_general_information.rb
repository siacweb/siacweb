class AddProvisoreColumnsToGeneralInformation < ActiveRecord::Migration
  def up
    add_column :general_informations, :phone, :string
  end
  def down
    remove_column :general_informations, :phone
  end
end