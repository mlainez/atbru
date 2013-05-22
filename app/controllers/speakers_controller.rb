class SpeakersController < ApplicationController
  def index
    render [ params[:year], 'speakers', 'index' ].join('/')
  end
end
