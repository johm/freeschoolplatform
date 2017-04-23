class AddProposalPrefaceToSite < ActiveRecord::Migration[5.0]
  def change
    add_column :sites, :proposal_preface, :text
  end
end
