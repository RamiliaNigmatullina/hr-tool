class AddInviteIdToFeedback < ActiveRecord::Migration
  def change
    add_reference :feedbacks, :invite, index: true, foreign_key: true
  end
end
