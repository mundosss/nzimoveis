# -*- encoding : utf-8 -*-
class AddAttachmentImagemToFotos < ActiveRecord::Migration
  def self.up
    change_table :fotos do |t|
      t.has_attached_file :imagem
    end
  end

  def self.down
    drop_attached_file :fotos, :imagem
  end
end
