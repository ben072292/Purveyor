class AddFarmerColumns < ActiveRecord::Migration
  def change
  add_column :farmers, :bio, :text_area
  add_column :farmers, :location, :string
  add_column :farmers, :picture, :binary
  add_column :farmers, :name, :string
  add_column :farmers, :nameofbusiness, :string
  add_column :farmers, :contactnumber, :string
  add_column :farmers, :contactemail, :string
  end
end
