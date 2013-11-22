class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.column :name, :string
      t.column :cost, :decimal
      t.column :quantity, :decimal
      t.column :unit, :string
      t.column :expirationDate, :date
      t.column :growingPractice, :string
      t.column :created_at, :datetime
      t.column :updated_at, :datetime
    end
  end
end
