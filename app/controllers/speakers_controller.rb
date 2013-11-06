class SpeakersController < ApplicationController
  def index
    render [ @year, 'speakers', 'index' ].join('/')
  end
end
