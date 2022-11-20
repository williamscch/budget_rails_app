class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.string :name, null:false
      t.float :amount, null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
