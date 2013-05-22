class PresentationsController < ApplicationController
  def index
    render [ params[:year], 'presentations', 'index' ].join('/')
  end
end