module Api
	class CheckController < Devise::OmniauthCallbacksController


	def check_api_login

		token = params[:token]

        	user = FbGraph::User.me(token)
        	user = user.fetch
		@current_user = User.find_by(uid: user.identifier)
		sign_in_and_redirect @current_user, event: :authentication 
		#respond_to do |format|
        	    #format.html # index.html.erb
        	    #format.json { render :json => @current_user.authentication_token}
		#end
        	
        	
	end

   end

end
