# -*- encoding : utf-8 -*-
class Contato < ActiveRecord::Base
  attr_accessible :cidade, :email, :estado, :info, :nome

  paginates_per 3


  validates :cidade, :nome, :format => { :with => /[A-Z].*/ , :message => 'primeira letra deve ser maiúscula'},:presence => true
  validates :estado, :info, :presence => true
  validates :email, :format => { :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/ },
            :presence => true

  #validate :primeira_letra_deve_ser_maiuscula

  private
  def primeira_letra_deve_ser_maiuscula
    [nome,cidade].each do |campo|
      errors.add("#{campo}", " primeira letra deve ser maiúscula") unless campo =~ /[A-Z].*/ || campo.blank?
    end
  end

end
