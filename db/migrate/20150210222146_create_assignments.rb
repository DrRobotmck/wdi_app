class CreateAssignments < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
			t.string :name
    	t.string :topic
    	t.float :comfortability
    	t.float :completeness
      t.timestamps
    end
  end
end
