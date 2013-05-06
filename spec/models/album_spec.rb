require 'spec_helper'

describe Album do
  subject {FactoryGirl.create(:album)}
  let (:invalid) {FactoryGirl.build(:album, name: nil)}

  it {should be_valid}

  it 'is invalid without a name' do
    invalid.should_not be_valid
    invalid.name = 'Test'
    invalid.should be_valid
  end
end