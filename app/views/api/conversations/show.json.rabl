object @itinerary
object @conversation
object @conversation.messages.all

attributes :body
child :sender do 
  attributes :created_at, :read_at, :name, :profile_picture
  
end
