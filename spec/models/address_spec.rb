require 'spec_helper'

describe Address do
  let(:address) { FactoryGirl.create :address }
  
  it { expect(address.address).not_to be_empty }
  it { expect(address.zipcode.to_s.size).to eq 9 }
  it { expect(address.phone.size).to be_between 11, 15 }
  it { expect(address.city.size).to be_between 2, 20 }

  it "belongs to country" do
    expect(address).to belong_to :country
  end
end
