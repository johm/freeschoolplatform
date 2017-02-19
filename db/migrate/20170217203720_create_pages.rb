class CreatePages < ActiveRecord::Migration[5.0]
  def change
    create_table :pages do |t|
      t.string :name
      t.text :body
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
