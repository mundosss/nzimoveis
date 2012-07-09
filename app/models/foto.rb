class Foto < ActiveRecord::Base
  belongs_to :imovel
  attr_accessible :caption, :imagem

  has_attached_file :imagem, :styles => { :medium => "600x600", :thumb => "135x125" }
end
