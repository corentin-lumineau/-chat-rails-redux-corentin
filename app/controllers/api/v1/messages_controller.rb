class Api::V1::MessagesController < ApplicationController

  before_action :retrieve_channel

  def index
   @messages = @channel.messages
   render json: @messages
  end

  def create
    @message = @channel.messages.build(content: params[:content])
    @message.user = current_user
    @message.save
    render json: @message
  end

  private

  def retrieve_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end

  def message_params
    params.require(:message).permit(:content)
  end
end


