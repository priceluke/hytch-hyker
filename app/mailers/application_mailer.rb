class ApplicationMailer < ActionMailer::Base
  default to: "help@pricel.uk", from: 'contact@form.ac.uk'
  layout 'mailer'
end
