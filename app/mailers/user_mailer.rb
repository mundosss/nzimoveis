class UserMailer < ActionMailer::Base
  default from: "neuza@nzimoveis.com.br"

  def mensagem_boas_vindas(user)
    @user = user
    @site = "http://nzimoveis.com.br"
    mail(:to => user.email,
         :subjetct => "Seja bem-vindo ao NZimóveis")
  end
end
