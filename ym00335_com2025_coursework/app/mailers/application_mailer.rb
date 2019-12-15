class ApplicationMailer < ActionMailer::Base
  default to: "no_reply@paintblock.com", from: 'no_reply@paintblock.com'
  layout 'mailer'
end
