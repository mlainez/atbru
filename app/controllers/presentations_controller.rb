class PresentationsController < ApplicationController
  def index
    render [ @year, 'presentations', 'index' ].join('/')
  end
end
