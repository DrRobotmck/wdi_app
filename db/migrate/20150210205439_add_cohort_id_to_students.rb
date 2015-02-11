class AddCohortIdToStudents < ActiveRecord::Migration
  def change
    add_column :students, :cohort_id, :integer
    add_index :students, :cohort_id
  end
end
