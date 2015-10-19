class SendTextsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def send_text_message

    #move next four lines to config file
    account_sid = ENV['TWILIO_SID']
    auth_token = ENV['TWILIO_TOKEN']
    twilio_phone_number = ENV['TWILIO_NUMBER']
    testing_phone_number = ENV['TEST_REAL_NUMBER']
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{testing_phone_number}",
      :body => "Testing...222"
    })

  end
end
