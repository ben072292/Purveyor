class CreateFarmers < ActiveRecord::Migration
  def change
    create_table :farmers do |t|
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
