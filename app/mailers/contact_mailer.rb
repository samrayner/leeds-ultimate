class ContactMailer < ActionMailer::Base
  default to: "info@leedsultimate.com",
          subject: "Message From Website Contact Form"

  def contact(email)
    @name = email.name
    @email = email.email
    @message = email.message
    from = "#{@name} <#{@email}>"
    mail(from: from, reply_to: from)
  end
end
