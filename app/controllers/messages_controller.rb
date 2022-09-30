class MessagesController < ApplicationController
  before_action :set_message, only: %i[ show ]

  def show
    render json: @message
  end

  private

  def set_message
    @message = Message.find(rand(Message.count))
  end
end
