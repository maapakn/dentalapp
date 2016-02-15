class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean
    add_column :users, :owner, :boolean
    add_column :users, :supervisor, :boolean
    add_column :users, :userconvenio, :boolean
  end
end
