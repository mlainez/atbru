class ProgramController < ApplicationController
  def show
    render [ params[:year], 'program', 'show' ].join('/')
  end
end