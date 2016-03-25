class AddOldRoleToUsers < ActiveRecord::Migration
  def change
    add_column :users, :old_role, :integer
  end
end
