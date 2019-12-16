class HomeController < ApplicationController
  def home
  end

  def contact
  end

#defines the contact request page, initializing the fields.
  def request_contact
  name = params[:name]
  email = params[:email]
  telephone = params[:telephone]
  message = params[:message]

#Checks if the email is blank. If it is, give a warning, if not, the mailer passes through.
  if email.blank?
   flash[:alert] = I18n.t('home.request_contact.no_email')
 else
   ContactMailer.contact_email(email, name, telephone, message).deliver_now
   flash[:notice] = I18n.t('home.request_contact.email_sent')
  end

#Then redirects to the homepage.
  redirect_to root_path
  end
end
