class UserDefaultRole < ActiveRecord::Migration
  def change
    change_column_default(:users, :role, "employee")
  end
end
