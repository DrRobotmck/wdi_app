class StudentsController < ApplicationController

	before_action :authorized!, only: [:show]

	def show
		@student = Student.find(params[:id])
	end

	private

	def authorized!
		binding.pry
  	unless params[:id] == session[:client_id]
  		redirect_to student_path(session[:client_id])
  	end
  end
end
