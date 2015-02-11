class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
    	t.string :first_name, null: false
    	t.string :last_name, null: false
    	t.string :github_username, null: false
      t.timestamps
    end
  end
end
