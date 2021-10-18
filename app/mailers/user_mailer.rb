class UserMailer < ApplicationMailer
default from: "do-not-reply@michaelstace.com"
def contact_email(contact)
@contact = contact
mail(to: Rails.application.secrets.owner_email, from: Rails.application.secrets.sender_email_address, :subject => "Website Contact")
end
end
