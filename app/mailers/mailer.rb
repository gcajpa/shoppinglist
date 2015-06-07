class Mailer < ApplicationMailer
  def send_list(email, list)
    @email = email
    @list = list
    mail to: @email
  end
end
