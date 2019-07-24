class AddImageToKids < ActiveRecord::Migration[5.2]
  def change
    add_column :kids, :description, :text
    add_column :kids, :image, :text
  end
end
