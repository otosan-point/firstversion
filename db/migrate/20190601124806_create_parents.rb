class CreateParents < ActiveRecord::Migration[5.2]
  def change
    create_table :parents do |t|
      t.string :name 
      t.text :email
      t.string :password
      t.timestamps null:false
    end
  end
end
