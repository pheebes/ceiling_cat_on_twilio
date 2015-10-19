class ReceiveTextsController < ApplicationController

  skip_before_action :verify_authenticity_token
  def index

    @client = Twilio::REST::Client.new
    @client.messages.list.each do |message|
      puts message.body
    end
  end

  def respond
    @users = User.all
    @zip = params[:FromZip]
    @body = params[:Body]
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message "Hello, thanks for messing us."
    end
    render 'respond.xml.erb', :content_type => 'text/xml'
  end
end
