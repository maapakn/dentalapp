class AddRolesMaskToUsers < ActiveRecord::Migration
  def change
    add_column :users, :roles_mask, :string
  end
end
