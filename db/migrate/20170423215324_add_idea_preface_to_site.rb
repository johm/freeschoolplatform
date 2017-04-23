class AddIdeaPrefaceToSite < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :idea_preface, :text
  end
end
