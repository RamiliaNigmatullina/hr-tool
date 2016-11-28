class AddDeletedAtToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :deleted_at, :datetime
  end
end
