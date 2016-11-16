class ChangeDefaultValueOfRoleOfUser < ActiveRecord::Migration
  def change
    change_column :users, :role, :string, default: "employee", null: false
  end
end
