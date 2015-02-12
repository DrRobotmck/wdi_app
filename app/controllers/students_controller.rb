class StudentsController < ApplicationController

	before_action :authorized!, only: [:show]
	before_action :instructor?, only: [:index]

	def index

	end

	def show
		@student = Student.find(params[:id])
	end

	private

	def authorized!
  	unless params[:id].to_i == session[:client_id].to_i
  		redirect_to student_path(session[:client_id])
  	end
  end
end
