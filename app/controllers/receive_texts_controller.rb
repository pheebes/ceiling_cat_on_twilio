class ReceiveTextsController < ApplicationController

  skip_before_action :verify_authenticity_token
  def index

  #need to add next two lines to config file
  account_sid = ''
  auth_token = ''

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.messages.list.each do |message|
      puts message.body
      puts message.body
      puts message.body
    end
  end
end
