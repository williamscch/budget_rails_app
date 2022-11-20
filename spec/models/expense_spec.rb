require 'rails_helper'

RSpec.describe Expense, type: :model do
  context 'Validation tests for Expense model' do
    it 'is not valid without a name' do
      @expense1 = Expense.create(name: nil, amount: 100)
      expect(@expense1).to_not be_valid
    end

    it 'is not valid without an amount' do
      @expense1 = Expense.create(name: 'name', amount: nil)
      expect(@expense1).to_not be_valid
    end
  end
end
