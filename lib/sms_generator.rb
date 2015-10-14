require 'twilio-ruby'

class SMSGenerator

  TWILIO SID = ''
  TWILIO_TOKEN = ''
  TWILIO_NUMBER = ''

  def self.send_sms() #???(user, survey)
    @client = Twilio::REST::Client.new account_sid, auth_token

    @client.account.messages.create({
      from: TWILIO_NUMBER,
      #???to: user phone number,
      #???body: survey
    })
  end
end
