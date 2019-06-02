class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.text :promise
      t.integer :kid_id
      t.timestamps null:false
    end
  end
end
