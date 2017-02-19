class CreateCourseSeries < ActiveRecord::Migration[5.0]
  def change
    create_table :course_series do |t|
      t.string :name
      t.text :description
      t.references :site, foreign_key: true
      t.boolean :is_open

      t.timestamps
    end
  end
end
