class ApplicationController < ActionController::Base
  helper_method :days_left
  protect_from_forgery
  before_filter :set_year

  PREVIOUS_YEARS = ["2013"]

  def days_left
    @days_left = (Date.new(2014, 10, 28) - Date.today).to_i
  end

  private
  def set_year
    @year = params[:year] if params[:year] && PREVIOUS_YEARS.include?(params[:year])
  end
end
