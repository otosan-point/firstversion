class CreateOpactions < ActiveRecord::Migration[5.2]
  def change
    create_table :opactions do |t|
      t.text :comment
      t.integer :promise_id
      t.integer :kid_id
      t.integer :approve
      t.timestamps
    end
  end
end
