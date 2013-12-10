class CreateFarmerInventories < ActiveRecord::Migration
  def change
    create_table :farmer_inventories do |t|
      t.string :name
      t.references :Farmer, index: true

      t.timestamps
    end
  end
end
