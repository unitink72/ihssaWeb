class SchoolsController < ApplicationController
	include SchoolsHelper

    def index
		@schools = School.all
	end

	def show
		@school = School.find(params[:id])
	end

	def new
		@school = School.new
	end

	def create
		@school = School.new (school_params)
		# @School.name = params[:School][:name]
		# @School.graduationYear = params[:School][:graduationYear]
		@school.save
		redirect_to school_path(@school)
	end


	def edit
	end

	def update
	end

	def destroy
		@school = School.find(params[:id])
		@school.destroy
		redirect_to schools_path
	end
end
