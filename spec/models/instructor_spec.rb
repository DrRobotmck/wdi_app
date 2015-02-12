require 'rails_helper'

RSpec.describe Instructor, :type => :model do
  it { should validate_presence_of :first_name }
  it { should validate_presence_of :last_name }
  it { should validate_presence_of :github_username }
  it { should have_secure_password }

  it { should have_and_belong_to_many :cohorts }
end
