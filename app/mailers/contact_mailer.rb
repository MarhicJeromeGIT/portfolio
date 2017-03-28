class ContactMailer < ApplicationMailer
  def contact_email(name:, email:, phone:, content:)
    @name = name
    @email = email
    @phone = phone
    @content = content
    mail(to: ENV['ADMIN_EMAIL'], subject: "Bandanatech.org : Contact from #{name} #{email}")
  end
end
