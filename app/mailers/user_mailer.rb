# -*- encoding : utf-8 -*-
class UserMailer < ActionMailer::Base
  default from: "mundosss25@gmail.com"

  def contato(contato)
    @contato = contato
    mail(to: "neuza@nzimoveis.com.br", subject: 'Contato NZimóveis')
  end
end
