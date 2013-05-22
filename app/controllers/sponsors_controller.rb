class SponsorsController < ApplicationController
  def index
    render [ params[:year], 'sponsors', 'index' ].join('/')
  end
end