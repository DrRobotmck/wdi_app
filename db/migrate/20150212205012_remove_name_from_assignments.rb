class RemoveNameFromAssignments < ActiveRecord::Migration
  def change
  	remove_column :assignments, :name, :string
  	remove_column :assignments, :topic, :string
  end
end
