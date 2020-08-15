class ChangeUsernameToName < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :username, :name
  end
end
