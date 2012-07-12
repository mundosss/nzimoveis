# -*- encoding : utf-8 -*-
class Imovel < ActiveRecord::Base
  attr_accessible :descricao, :nome, :valor, :fotos_attributes

  validates :descricao, :nome, :presence => true

  has_many :fotos

  accepts_nested_attributes_for :fotos, :reject_if => proc { |attributes| attributes['imagem'].blank? }

  paginates_per 3

end

