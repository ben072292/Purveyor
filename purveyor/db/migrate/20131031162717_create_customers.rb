class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :typeofbusiness
      t.string :desiredpickup

      t.timestamps
    end
  end
end
