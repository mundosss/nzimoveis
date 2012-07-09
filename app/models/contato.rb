class Contato < ActiveRecord::Base
  attr_accessible :cidade, :email, :estado, :info, :nome
end
