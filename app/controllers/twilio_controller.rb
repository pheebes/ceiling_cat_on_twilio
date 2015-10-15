require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def sms
    reponse = Twilio::TwiML::Response.new do |r|
      r.say "Hi person"
    end

    render_twiml response
  end
