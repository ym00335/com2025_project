class HomeController < ApplicationController
  def home
  end

  def contact
  end


  def request_contact
  email = params[:email]
  description = params[description]

  if email.blank?
   flash[:notice] = l18n.t('home.request_contact.no_email')
 else
   flash[:notice] = l18n.t('home.request_contact.email_sent')
  end

  redirect_to root_path
  end
end
