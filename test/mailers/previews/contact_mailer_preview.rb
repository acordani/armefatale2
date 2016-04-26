class ContactMailerPreview < ActionMailer::Preview
  def welcome
    contact = Contact.last
    ContactMailer.welcome(contact)
  end
end