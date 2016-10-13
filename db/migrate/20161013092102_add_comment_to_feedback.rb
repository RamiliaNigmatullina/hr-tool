class AddCommentToFeedback < ActiveRecord::Migration
  def change
    add_column :skill_feedbacks, :comment, :text
  end
end
