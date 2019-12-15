class ContactMailer < ApplicationMailer
  @email = email
  @description = description

  mail cc: @email
end
