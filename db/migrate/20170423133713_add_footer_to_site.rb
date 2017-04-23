class AddFooterToSite < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :footer, :text
  end
end
