class CreateAssessments < ActiveRecord::Migration
  def change
    create_table :assessments do |t|
      t.integer :user_id
      t.date :date

      t.timestamps null: false
    end
  end
end
