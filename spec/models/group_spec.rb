require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'Validation tests for group model' do
    it 'is not valid without a name' do
      @group1 = Group.create(name: nil, icon: 'icon')
      expect(@group1).to_not be_valid
    end

    it 'is not valid without an icon' do
      @group2 = Group.create(name: 'name', icon: nil)
      expect(@group2).to_not be_valid
    end
  end
end
