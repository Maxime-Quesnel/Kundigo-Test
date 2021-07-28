class UserMailer < ApplicationMailer

  def confirm_achat(email, id)
    @user_id = id

    mail(to: email, subject: 'Annulation de votre demande')

  end

end
