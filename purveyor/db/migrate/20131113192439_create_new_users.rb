class CreateNewUsers < ActiveRecord::Migration
  def change
    create_table :new_users do |t|
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
