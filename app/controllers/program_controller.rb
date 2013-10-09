class ProgramController < ApplicationController
  def show
    render [ @year, 'program', 'show' ].join('/')
  end
end
