class ChangeDefaultRoleInUsersTable < ActiveRecord::Migration
  def change
    change_column_default(:users, :role, "Сотрудник")
  end
end
