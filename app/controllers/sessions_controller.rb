class SessionsController < ApplicationController

	def login
		client = Student.find_by(github_username: params[:github_username])
		client ||= Instructor.find_by(github_username: params[:github_username])
		if client && client.authenticate(params[:password])
			session[:client_id] = client.id
			session[:instructor] = client.is_a? Instructor
			if session[:instructor]
				redirect_to students_path
			else
				redirect_to client
			end
		else
			redirect_to root_path
		end
	end
end