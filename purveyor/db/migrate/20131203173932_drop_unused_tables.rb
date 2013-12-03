class DropUnusedTables < ActiveRecord::Migration
  def change
    drop_table :customerforms
    drop_table :inventories
    drop_table :new_users
  end
end
