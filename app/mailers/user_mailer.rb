class UserMailer < ApplicationMailer

  def cancel_command(email, id, token)
    @user_id = id
    @user_email = email
    @token_order = token

    mail(to: email, subject: 'Annulation de votre demande')
  end

end
