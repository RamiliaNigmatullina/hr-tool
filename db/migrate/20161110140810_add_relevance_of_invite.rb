class AddRelevanceOfInvite < ActiveRecord::Migration
  def change
    add_column :invites, :relevance, :boolean, default: true, null: false
  end
end
