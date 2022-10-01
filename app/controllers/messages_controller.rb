class MessagesController < ApplicationController
  before_action :set_message, only: %i[ random_message ]

  def random_message
    render json: @message
  end

  private

  def set_message
    @message = Message.find(rand(Message.count))
  end
end
