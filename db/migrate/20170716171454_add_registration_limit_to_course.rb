class AddRegistrationLimitToCourse < ActiveRecord::Migration[5.0]
  def change
    add_column :courses,:limit,:integer,:null => false, :default => 0
  end
end
