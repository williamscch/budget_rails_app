require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    User.new(name: 'Tommy')
  end

  before(:example) { subject.save }

  it 'Name must be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'A valid name should be accepted' do
    subject.name = 'David'
    expect(subject).to be_valid
  end
end
