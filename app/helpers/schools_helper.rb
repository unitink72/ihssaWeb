module SchoolsHelper

	def school_params
		params.require(:school).permit(:name, :poNumber, :addressStreet, 
			                           :addressCity, :addressState, :addressZip)
	end

end
