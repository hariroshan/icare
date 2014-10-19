object @latest_itineraries

#node(:t){@latest_itineraries.to_json}
child :user do
  attributes :name, :uid, :profile_picture, :facebook_verified
end
node(:url) { |latest_itineraries| itinerary_url(latest_itineraries) }
attributes :start_address, :end_address,:leave_date







