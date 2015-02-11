class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
    	t.string :first_name, null: false
    	t.string :last_name, null: false
    	t.string :github_username, null: false
    	t.integer :github_id, null: false
    	t.string :email, null: false
    	t.date :birthday, null: false
      t.timestamps
    end
  end
end
