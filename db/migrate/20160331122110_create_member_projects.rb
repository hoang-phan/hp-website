class CreateMemberProjects < ActiveRecord::Migration
  def change
    create_table :member_projects do |t|
      t.references :member, index: true, foreign_key: { on_delete: :cascade }
      t.references :project, index: true, foreign_key: { on_delete: :cascade }

      t.timestamps null: false
    end
  end
end
