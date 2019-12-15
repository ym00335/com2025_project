# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
  def contact_email
    ContactMailer.contact_email("johnny@paintblock.com", "Johnathan Cage", "123456789", @message="Hi!")
  end
end
