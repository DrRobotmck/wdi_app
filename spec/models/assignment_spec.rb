require 'rails_helper'

RSpec.describe Assignment, :type => :model do
	it { should validate_presence_of :comfortability }
	it { should validate_presence_of :completeness }
	it { should validate_numericality_of :comfortability }
	it { should validate_numericality_of :completeness }

	it { should belong_to :student }

end
