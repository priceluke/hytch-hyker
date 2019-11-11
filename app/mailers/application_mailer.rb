class ApplicationMailer < ActionMailer::Base
  default to: "help@pricel.uk", from: 'from@example.com'
  layout 'mailer'
end
