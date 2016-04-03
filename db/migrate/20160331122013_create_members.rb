class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name, index: true
      t.string :role, index: true

      t.timestamps null: false
    end
  end
end
