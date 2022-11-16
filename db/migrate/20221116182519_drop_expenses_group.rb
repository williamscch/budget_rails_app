class DropExpensesGroup < ActiveRecord::Migration[7.0]
  def up
    drop_table :expenses_groups
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
