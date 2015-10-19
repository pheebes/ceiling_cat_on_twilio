class SendTextsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
  end

  def send_text_message
    twilio_phone_number = ENV['TWILIO_NUMBER']
    testing_phone_number = ENV['TEST_REAL_NUMBER']

    @client = Twilio::REST::Client.new
    @client.account.messages.create({
      :from => "+1#{twilio_phone_number}",
      :to => "+1#{testing_phone_number}",
      :body => "This is a test text message. 123 Test."
    })
  end
end
