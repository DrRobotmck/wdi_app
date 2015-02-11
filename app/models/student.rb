class Student < ActiveRecord::Base

	belongs_to :cohort
	has_many :assignments

	validates_presence_of :first_name, :last_name, :github_username
	validates_presence_of :github_userid, :email, :birthday
	validates_numericality_of :github_userid
	validates_uniqueness_of :github_username, :github_userid
end
