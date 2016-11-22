class DeleteRelevanceFromInvites < ActiveRecord::Migration
  def change
    remove_column :invites, :relevance
  end
end
