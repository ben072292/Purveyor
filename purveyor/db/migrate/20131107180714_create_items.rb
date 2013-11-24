class CreateItems < ActiveRecord::Migration

  def change
    create_table :items do |t|
      t.string :name
      t.decimal :cost
      t.decimal :quantity
      t.string :unit
      t.date :expirationDate
      t.string :growingPractice
      t.references :inventory

      t.timestamps
    end
    
    add_index :items, :inventory_id
  end
end
