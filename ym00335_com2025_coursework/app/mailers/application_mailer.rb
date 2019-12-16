class ApplicationMailer < ActionMailer::Base
  #Sets the basis for the receiver and reply emails.
  default to: "no_reply@paintblock.com", from: 'no_reply@paintblock.com'
  layout 'mailer'
end
