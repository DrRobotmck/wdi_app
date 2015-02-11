class Assignment < ActiveRecord::Base

	belongs_to :student

	validates_presence_of :name, :topic, :comfortability, :completeness
	validates_numericality_of :completeness, :comfortability
end
