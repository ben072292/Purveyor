class CreateInventoryArrays < ActiveRecord::Migration
  def change
    create_table :inventory_arrays do |t|
      t.string :[]

      t.timestamps
    end
  end
end
