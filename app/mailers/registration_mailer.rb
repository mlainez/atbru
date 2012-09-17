class RegistrationMailer < ActionMailer::Base
  default from: "registrations@atbru.be"

  def registration_created(registration)
    @registration = registration
    mail(:to => "agiletour@agilesystems.org", :subject => "New registration to Agile Tour Brussels")
  end

  def thanks_registration(registration)
    @registration = registration
    @email        = @registration.email
    mail(:to => @email, :subject => "Thank you for your registration to Agile Tour Brussels")
  end
end
