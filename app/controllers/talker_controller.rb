class TalkerController < ApplicationController
  def index
    @chats = Chat.all
  end

  def create
    talk = Talk.where(ask: params[:ask]).sample

    unless talk.nil?
      Chat.create(chat_type: "user", chat_content: talk.ask)
      Chat.create(chat_type: "bot", chat_content: talk.answer)
      redirect_to '/'
    else
      redirect_to '/learn'
    end

  end
end
