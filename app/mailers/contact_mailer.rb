class ContactMailer < ApplicationMailer

  def contact
    mail(to: 'contact@test.fr', subject: 'Sujet de test')
  end

end
