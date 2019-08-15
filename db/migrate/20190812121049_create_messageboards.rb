class CreateMessageboards < ActiveRecord::Migration[5.2]
  def change
    create_table :messageboards do |t|
      t.text  :rule
      t.text  :message
      t.integer :user_id
      t.timestamps
    end
  end
end
