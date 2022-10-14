class HomeController < ApplicationController
  def index
    render json: 'test json' # TODO: write some welcome message if somebody opens the root route
  end
end
