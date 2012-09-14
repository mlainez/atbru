class RegistrationController < ApplicationController
  def show
  end

  def create
    RegistrationMailer.registration_created(params).deliver
    flash[:notice] = "We have been notified of your registration, you should receive an invoice in the following hours. Thank you!"
    redirect_to registration_path
  end
end