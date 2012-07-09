class HomeController < ApplicationController
  def index
    @imoveis = Imovel.order("nome").paginate(:page=> params['page'], :per_page=>3)

  end
end
