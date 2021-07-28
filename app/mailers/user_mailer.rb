class UserMailer < ApplicationMailer

  def confirm_achat(email)

    mail(to: email, subject: "Creation of the order")
  end

end
