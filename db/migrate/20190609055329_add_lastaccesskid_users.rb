class AddLastaccesskidUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :last_access_kid, :integer
  end
end
