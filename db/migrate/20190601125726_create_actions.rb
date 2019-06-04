class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.text :commemt
      t.integer :promise_id
      t.integer :kid_id
      t.integer :approve
      t.timestamps
    end
  end
end
