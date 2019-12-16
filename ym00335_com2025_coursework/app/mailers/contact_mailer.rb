class ContactMailer < ApplicationMailer
#Mailer initiliazing the necessary attributes for the contact page.
  def contact_email(email, name, telephone, message)
    @email = email
    @name = name
    @telephone = telephone
    @message = message

  mail cc: @email
  end
end
