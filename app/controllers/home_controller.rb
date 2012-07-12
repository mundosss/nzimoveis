# -*- encoding : utf-8 -*-
class HomeController < ApplicationController

  def index
    @imoveis = Imovel.order(:nome).page params[:page]

  end

end
