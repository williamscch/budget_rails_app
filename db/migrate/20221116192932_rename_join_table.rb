class RenameJoinTable < ActiveRecord::Migration[7.0]
  def change
    rename_table :groups_expenses, :expenses_groups
  end
end
