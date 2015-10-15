class ReceiveTextsController < ApplicationController

  def index

  #need to add next two lines to config file
  account_sid = "set_me"
  auth_token = "set_me"

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.messages.list.each do |message|
      puts message.body
    end
  end
end
