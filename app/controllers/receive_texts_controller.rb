class ReceiveTextsController < ApplicationController

  skip_before_action :verify_authenticity_token
  def index

  #need to add next two lines to config file
  account_sid = ENV['TWILIO_SID']
  auth_token = ENV['TWILIO_TOKEN']

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.messages.list.each do |message|
      puts message.body
    end
  end

  def respond
    @zip = params[:FromZip]
    twiml = Twilio::TwiML::Response.new do |r|
      r.Message "Hello, You.  Thanks for messing us."
    end
    #twiml.text
    render 'respond.xml.erb', :content_type => 'text/xml'
  end

end
