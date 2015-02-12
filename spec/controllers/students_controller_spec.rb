require 'rails_helper'

RSpec.describe StudentsController, :type => :controller do

	describe 'GET #show' do
		let(:stu1) { create(:student, github_username: 'swag', github_userid: 1) }
		let(:stu2) { create(:student, github_username: 'tober', github_userid: 2) }
		let(:ins1) { create(:instructor) }

		it 'responds with a successful http status 200' do
			get(:show, { id: stu1.id }, { client_id: stu1.id })
			expect(response).to be_success
			expect(response).to have_http_status(200)
		end
		it 'renders the show template if you are a logged in student' do
			get(:show, { id: stu1.id }, { client_id: stu1.id })
			expect(response).to render_template("show")
		end
		it 'loads the student object into @student' do
			get(:show, { id: stu1.id }, { client_id: stu1.id })
			expect(assigns(:student)).to eq(stu1)
		end
		it 'redirects if you are not the logged in student' do
			get(:show, { id: stu1.id }, { client_id: stu2.id })
			expect(response).to redirect_to( student_path(stu2.id) )
		end
		it 'doesnt redirect if you are an instructor' do
			get(:show, {id: stu1.id}, {client_id: ins1.id})
		end
	end
end
