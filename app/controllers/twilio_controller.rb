require 'twilio-ruby'
 
class SendTextController < ApplicationController
  def index
  end

  def send_text_message
    number_to_send_to = params[:number_to_send_to]

    twilio_sid = AC8462b3cfad999c1b46f67da5ee678565
    twilio_token = 1f027275e60dd7138d8a24bec34645db
    twilio_phone_number = "7043127378"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
      :from => +1#{7043127378}",
      :to => number_to_send_to,
      :body => "Welcome to app.ly! Let's get started. Reply APPLY to verify your phone number."
    ) 
  end
end