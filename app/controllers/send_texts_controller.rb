class SendTextsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def send_text_message

    #move next three lines to config file
    account_sid = ''
    auth_token = ''
    twilio_phone_number = ''

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      :from => "+1#{twilio_phone_number}",
      :to => "+",
      :body => "Testing...222"
    })

  end
end
