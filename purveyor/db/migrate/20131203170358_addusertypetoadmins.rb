class Addusertypetoadmins < ActiveRecord::Migration
  def change
	add_column :admins, :usertype, :string
  end
end
