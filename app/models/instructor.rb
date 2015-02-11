class Instructor < ActiveRecord::Base

	validates_presence_of :first_name, :last_name, :github_username
	has_and_belongs_to_many :cohorts
end
