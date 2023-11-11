class Api::GreetingsController < ApplicationController
  def random_greeting
    @random_greeting = Greeting.order('RANDOM()').first
    render json: @random_greeting.message
  end
end
