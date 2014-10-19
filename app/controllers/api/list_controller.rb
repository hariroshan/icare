module Api
class ListController < ApplicationController

	def latestitineraries
		@latest_itineraries = Itinerary.includes(:user).page(params[:page]).per(10).desc(:created_at)
  		# Gender filter
  		@latest_itineraries = @latest_itineraries.where(pink: false) if current_user.male?
	end 


end
end
