class RegistrationMailer < ActionMailer::Base
  default from: "registrations@atbru.be"

  def registration_created(params)
    @params = params
    mail(:to => "agiletour@agilesystems.org", :subject => "New registration to Agile Tour Brussels")
  end
end
