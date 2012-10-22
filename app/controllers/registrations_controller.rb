class RegistrationsController < ApplicationController
  def index
    @registration = Registration.new
    @registration.participants.build
    @participant_count  = Participant.count
    @progress_bar_value = ((@participant_count / 80.0) * 100).round
  end

  def create
    @participant_count = Participant.count
    @registration      = Registration.new(params[:registration])
    if @registration.save
      RegistrationMailer.registration_created(@registration).deliver
      RegistrationMailer.thanks_registration(@registration).deliver
      flash[:notice] = "We have been notified of your registration, you should receive an invoice in the following hours. Thank you!"
    else
      flash[:error] = "There was a problem with your registration, please try again later..."
    end
    redirect_to registrations_path
  end
end