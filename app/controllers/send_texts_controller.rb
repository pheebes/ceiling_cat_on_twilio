class SendTextsController < ApplicationController

  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    #move next three lines to config file
    account_sid = "set_me"
    auth_token = "set_me"
    twilio_phone_number = "set_me"

    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.sms.messages.create(
      :from => "+1#{twilio_phone_number}",
      :to => number_to_send_to,
      :body => "Testing..."
    )

  end
end
