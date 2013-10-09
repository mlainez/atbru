class SponsorsController < ApplicationController
  def index
    render [ @year, 'sponsors', 'index' ].join('/')
  end
end
