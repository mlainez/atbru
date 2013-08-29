class DetailsController < ApplicationController
  def index
    render [ params[:year], 'details', 'index' ].join('/')
  end
end