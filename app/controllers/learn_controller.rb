class LearnController < ApplicationController
  def index
  end

  def create
    my_ask = params[:ask]
    my_answer = params[:answer]

    Talk.create(ask: my_ask, answer: my_answer)

    redirect_to '/learn'
  end
end
