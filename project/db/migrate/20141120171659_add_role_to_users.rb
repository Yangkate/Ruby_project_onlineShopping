class AddRoleToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :Role, index: true
  end
end
