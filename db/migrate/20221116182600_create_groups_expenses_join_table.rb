class CreateGroupsExpensesJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :groups_expenses, id: false do |t|
      t.belongs_to :group
      t.belongs_to :expense
    end
  end
end
