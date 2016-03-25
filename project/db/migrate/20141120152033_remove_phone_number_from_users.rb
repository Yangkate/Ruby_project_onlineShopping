class RemovePhoneNumberFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :PhoneNumber, :string
  end
end
