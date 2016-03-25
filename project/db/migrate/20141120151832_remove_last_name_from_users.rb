class RemoveLastNameFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :LastName, :string
  end
end
