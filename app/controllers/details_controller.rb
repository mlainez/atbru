class DetailsController < ApplicationController
  def index
    render [ @year, 'details', 'index' ].join('/')
  end
end
