class CreateCustomerforms < ActiveRecord::Migration
  def change
    create_table :customerforms do |t|

      t.timestamps
    end
  end
end
