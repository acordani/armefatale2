class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.welcome.subject
  #
  def welcome(contact)
    @contact = contact

    mail(
    	to: @contact.mail, 
    	subject: "Votre demande a bien été prise en compte",
    	cc: ['alcordani@gmail.com']
    	)
  end

  
  
end
