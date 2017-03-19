class AddHomepageToSite < ActiveRecord::Migration[5.0]
  def change
    add_reference :sites, :homepage
  end
end
