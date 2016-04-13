class AlterProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :start_date, :datetime
    remove_column :projects, :end_date, :datetime

    add_column :projects, :start_month, :integer, default: Project::MIN_MONTH
    add_index :projects, :start_month

    add_column :projects, :start_year, :integer, default: Project::MIN_YEAR
    add_index :projects, :start_year
  end
end
