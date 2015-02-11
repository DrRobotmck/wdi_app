require 'rails_helper'

RSpec.describe StudentsController, :type => :controller do

	describe 'GET #show' do
		before do
			create(:student)
			create(:student)
		end
		it 'responds with a successful http status 200' do
			get(:show, {id: 1}, {student_id: 1})
			expect(response).to be_success
		end
		it 'renders the show template if you are a logged in student' do
			get(:show, {id: 1}, {student_id: 1})
			expect(response).to render_template("show")
		end
		it 'redirects if you are not the logged in student' do
			get(:show, {id: 1}, {student_id: 2})
			expect(response).to render_template("show")
		end
	end
end
