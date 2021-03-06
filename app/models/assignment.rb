class Assignment < ActiveRecord::Base

	belongs_to :student

	validates_presence_of :comfortability, :completeness
	validates_numericality_of :completeness, :comfortability
end
