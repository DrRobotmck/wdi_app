class CreateJoinTableCohortInstructor < ActiveRecord::Migration
  def change
    create_join_table :cohorts, :instructors do |t|
      t.index [:cohort_id, :instructor_id]
      t.index [:instructor_id, :cohort_id]
    end
  end
end
