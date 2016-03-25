class RemoveFirstNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :FirstName, :string
  end
end
