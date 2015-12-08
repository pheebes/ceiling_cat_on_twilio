class ReceiveTextsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_store
  before_action :set_user, only: [:respond]

  def index
    @client = Twilio::REST::Client.new
    @client.messages.list.each do |message|
      puts message.body
    end
  end

  def respond
    @users = @store.users.all
    @zip = params[:FromZip]
    @body = params[:Body]
    render 'respond.xml.erb', :content_type => 'text/xml'
  end

  private
     # Set store so app will be able to find users associated to the store
    def set_store
      @store = Store.find(params[:store_id])
    end

    # Set user which will be called before the respond action
    def set_user
      @user = @store.users.find(params[:id])
    end
end
