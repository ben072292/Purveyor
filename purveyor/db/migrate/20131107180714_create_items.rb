class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.fixnum :cost
      t.fixnum :quantity
      t.date :expirationDate
      t.string :growingPractice
      t.string :namey	
      t.timestamps
    end
  end
end
