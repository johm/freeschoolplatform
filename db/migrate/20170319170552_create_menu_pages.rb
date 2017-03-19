class CreateMenuPages < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_pages do |t|
      t.references :menu, foreign_key: true
      t.references :page, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
