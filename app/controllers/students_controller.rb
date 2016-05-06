class StudentsController < ApplicationController
	include StudentsHelper

	def index
		@students = Student.all
	end

	def show
		@student = Student.find(params[:id])
	end

	def new
		@student = Student.new
	end

	def create
		@student = Student.new (student_params)
		# @student.name = params[:student][:name]
		# @student.graduationYear = params[:student][:graduationYear]
		@student.save
		redirect_to student_path(@student)
	end


	def edit
	end

	def update
	end

	def destroy
		@student = Student.find(params[:id])
		@student.destroy
		redirect_to students_path
	end

end