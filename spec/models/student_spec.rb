require 'rails_helper'

RSpec.describe Student, :type => :model do

	it { should validate_presence_of :first_name }
	it { should validate_presence_of :last_name }
	it { should validate_presence_of :github_username }
	it { should validate_presence_of :github_userid }
	it { should validate_presence_of :email }
	it { should validate_presence_of :birthday }

	it { should allow_value(/\b[A-Z0-9._%a-z\-]+@(?:[A-Z0-9a-z\-]+\.)+[A-Za-z]{2,4}\z/).for(:email) }

	it do
		student1 = Student.create!({
			first_name: 'a',
			last_name: 'b',
			github_username: 'c',
			github_userid: 1,
			email: 'a@b.com',
			birthday: '09-08-1988'
			})
		student2 = Student.new({
			first_name: 'aa',
			last_name: 'ba',
			github_username: 'c',
			github_userid: 1,
			email: 'a@b.com',
			birthday: '09-08-1988'
			})

	 	expect(student2.valid?).to eq false
	 	expect(student2.errors).to include(:github_userid, :github_username)
	end

	it { should validate_numericality_of :github_userid }

	it { should belong_to :cohort }
	it { should have_many :assignments }

end
