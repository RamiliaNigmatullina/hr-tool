class RenameRoleToRequestedRoleInAssessmentsTable < ActiveRecord::Migration
  def change
    rename_column :assessments, :role, :requested_role
  end
end
