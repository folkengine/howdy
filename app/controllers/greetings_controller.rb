require 'honeycomb-beeline'

class GreetingsController < ApplicationController
  def howdy

    namer = NameService.new

    if params[:name].present?

      Honeycomb.add_field('GreetingsController', params[:name])

      @handle = params[:name]
      @message = namer.new?(@handle) ? 'Howdy' : 'Welcome back'
    else
      @handle = namer.default_name
      @message = 'Saddle on up'
    end
  end
end
