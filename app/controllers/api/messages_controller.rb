module Api
class MessagesController < ApplicationController

  def create
    conversation = current_user.conversations.find(params[:conversation_id])
    if conversation.messages.create(params[:message].merge(sender: current_user))
      redirect_to conversation_path(conversation)
    else
      redirect_to conversation_path(conversation), flash: { error: t('flash.messages.error.create') }
    end
  end

def home
    # NOTE nested eager loading is not available
    #@conversations = current_user.conversations.includes(:users).desc(:updated_at).page params[:page] if current_user 
    respond_to do |format|
   msg = { :status => "403", :message => "forbidden", :csrf => form_authenticity_token ,:login => (if current_user then  "true" else "false" end  )  }
   format.any  { render :json => msg } # don't do msg.to_json
 end 
 end
end

end
