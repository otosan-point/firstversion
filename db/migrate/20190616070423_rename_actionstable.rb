class RenameActionstable < ActiveRecord::Migration[5.2]
  def change
    rename_column :actions, :commemt, :comment
  end
end
