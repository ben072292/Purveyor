class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :nameofbusiness
      t.string :contactnumber
      t.string :contactemail
      t.string :typeofbusiness
      t.string :pickuplocation

      t.timestamps
    end
  end
end
