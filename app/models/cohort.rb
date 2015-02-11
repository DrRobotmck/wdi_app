class Cohort < ActiveRecord::Base

	has_many :students
	has_and_belongs_to_many :instructors

	validates_presence_of :campus, :city, :name, :number
	validates_numericality_of :number, only_integer: true
	validates_inclusion_of :city, in: [
		"New York City",
		"Sydney",
		"Los Angeles",
		"San Francisco",
		"Seattle",
		"Boston",
		"Washington D.C.",
		"Atlanta",
		"Chicago",
		"Austin",
		"Hong Kong",
		"London",
		"Melbourne"
	]
end
