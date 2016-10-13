class CreateSkillFeedbacks < ActiveRecord::Migration
  def change
    create_table :skill_feedbacks do |t|
      t.integer :skill_id
      t.integer :feedback_id
      t.integer :score

      t.timestamps null: false
    end
  end
end
