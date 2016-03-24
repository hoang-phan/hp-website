class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps null: false
    end

    add_index :projects, :name
    add_index :projects, :start_date
    add_index :projects, :end_date
  end
end
