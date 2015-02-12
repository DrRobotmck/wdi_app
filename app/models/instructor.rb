class Instructor < ActiveRecord::Base
	has_secure_password
	validates_presence_of :first_name, :last_name, :github_username
	has_and_belongs_to_many :cohorts
end
