class SponsoringController < ApplicationController
  def index
    render [ @year, 'sponsoring', 'index' ].join('/')
  end
end
