class RemoveCurrentRoleFromUser < ActiveRecord::Migration
  def change
    remove_column :users, :current_role, :integer
  end
end
