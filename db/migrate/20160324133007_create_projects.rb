class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name, index: true
      t.datetime :start_date, index: true
      t.datetime :end_date, index: true

      t.timestamps null: false
    end
  end
end
