class ChangeGithubId < ActiveRecord::Migration
  def change
  	rename_column :students, :github_id, :github_userid
  end
end
