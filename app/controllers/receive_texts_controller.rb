class ReceiveTextsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_store, only: [:respond]


  def index
    @client = Twilio::REST::Client.new
    @client.messages.list.each do |message|
      puts message.body
    end
  end

  def respond
    puts params.inspect
    @zip = params[:FromZip]
    @body = params[:Body].to_s
    render 'respond.xml.erb', :content_type => 'text/xml'
  end

  private
     # Set store so app will be able to find users associated to the store
    def set_store
      @stores = Store.all 
    end

    # Set user which will be called before the respond action

end
