class ApplicationController < ActionController::Base
  helper_method :days_left
  protect_from_forgery

  def days_left
    @days_left = (Date.new(2013, 9, 27) - Date.today).to_i
  end
end
