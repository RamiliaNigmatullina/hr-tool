class AddRoleToAssessments < ActiveRecord::Migration
  def change
    add_column :assessments, :role, :string
  end
end
