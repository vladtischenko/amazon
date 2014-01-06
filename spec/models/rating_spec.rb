require 'spec_helper'

describe Rating do
  let(:rating) { FactoryGirl.create :rating }

  it { expect(rating).to belong_to :book }
  it { expect(rating).to belong_to :customer }
  it { expect(rating).to validate_presence_of :rating }
  it { expect(rating).to validate_presence_of :text }
  it { expect(rating.text.size).to be_between 5, 25 }
end
