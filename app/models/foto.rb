# -*- encoding : utf-8 -*-
class Foto < ActiveRecord::Base
  belongs_to :imovel
  attr_accessible :caption, :imagem

  has_attached_file :imagem, :styles => { :medium => "400x375", :thumb => "70x60" }
end
