class AddStudentIdToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :student_id, :integer
    add_index :assignments, :student_id
  end
end
