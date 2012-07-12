# -*- encoding : utf-8 -*-
class CreateImoveis < ActiveRecord::Migration
  def change
    create_table :imoveis do |t|
      t.string :nome
      t.text :descricao
      t.decimal :valor

      t.timestamps
    end
  end
end
