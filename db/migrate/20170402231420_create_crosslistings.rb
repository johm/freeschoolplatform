class CreateCrosslistings < ActiveRecord::Migration[5.0]
  def change
    create_table :crosslistings do |t|
      t.references :course, foreign_key: true
      t.references :site, foreign_key: true

      t.timestamps
    end
  end
end
