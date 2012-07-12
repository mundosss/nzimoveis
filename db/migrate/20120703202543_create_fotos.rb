# -*- encoding : utf-8 -*-
class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.references :imovel
      t.string :caption

      t.timestamps
    end
    add_index :fotos, :imovel_id
  end
end
