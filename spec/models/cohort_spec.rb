require 'rails_helper'

RSpec.describe Cohort, :type => :model do

	it { should validate_presence_of :name }
	it { should validate_presence_of :city }
	it { should validate_presence_of :campus }
	it { should validate_presence_of :number }

	it { should validate_numericality_of :number }
	it do
		should validate_inclusion_of(:city).in_array([
			'New York City',
			'Sydney',
			'Los Angeles',
			'San Francisco',
			'Seattle',
			'Boston',
			'Washington D.C.',
			'Atlanta',
			'Chicago',
			'Austin',
			'Hong Kong',
			'London',
			'Melbourne'
		])
	end

	it { should have_and_belong_to_many :instructors }
	it { should have_many :students }

end
