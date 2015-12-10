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
    @zip = params[:FromZip]
    @body = params[:Body].to_s
    render 'respond.xml.erb', :content_type => 'text/xml'
  end

  private
     # Set stores so respond view will have access to store information
    def set_store
      @stores = Store.all 
    end
end
