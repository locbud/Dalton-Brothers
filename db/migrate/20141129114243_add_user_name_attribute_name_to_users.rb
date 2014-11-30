class AddUserNameAttributeNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :username_attribute_name, :string
  end
end
