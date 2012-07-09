class CreateContatos < ActiveRecord::Migration
  def change
    create_table :contatos do |t|
      t.string :nome
      t.string :email
      t.string :cidade
      t.string :estado
      t.text :info

      t.timestamps
    end
  end
end
