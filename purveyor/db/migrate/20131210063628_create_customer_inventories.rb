class CreateCustomerInventories < ActiveRecord::Migration
  def change
    create_table :customer_inventories do |t|
      t.string :name
      t.references :Customer, index: true

      t.timestamps
    end
  end
end
