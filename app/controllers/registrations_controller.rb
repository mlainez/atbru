class RegistrationsController < ApplicationController
  def index
    @registration = Registration.new
    @registration.participants.build
    @participant_count = Participant.count
  end

  def create
    @registration = Registration.new(params[:registration])
    if @registration.save
      RegistrationMailer.registration_created(@registration).deliver
      flash[:notice] = "We have been notified of your registration, you should receive an invoice in the following hours. Thank you!"
    else
      flash[:error] = "There was a problem with your registration, please try again later..."
    end
    redirect_to registrations_path
  end
end