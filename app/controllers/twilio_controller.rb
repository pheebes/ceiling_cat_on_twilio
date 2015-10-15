require 'twilio-ruby'

class TwilioController < ApplicationController
  include Webhookable

  after_filter :set_header

  skip_before_action :verify_authenticity_token

  def voice
    reponse = Twilio::TwiML::Response.new do |r|
      r.Say "Hi person."
    end

    render_twiml response
  end
