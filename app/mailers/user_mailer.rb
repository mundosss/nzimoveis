# -*- encoding : utf-8 -*-
class UserMailer < ActionMailer::Base
  default from: "mundosss@gmail.com"


  def mensagem_boas_vindas(user)
    @user = user
    @site = "http://nzimoveis.com.br"
    mail(:to => user.email,
         :subjetct => "Seja bem-vindo ao NZimóveis")
  end

  def contato(contato)
    @contato = contato
    mail(to: "mundosss@gmail.com", subject: 'Contato NZimóveis')
  end
end
