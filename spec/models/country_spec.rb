require 'spec_helper'

describe Country do
  let(:country) { FactoryGirl.create :country }
  it { expect(country).to validate_presence_of(:name) }

  context "with exactly name" do
    let(:country) { FactoryGirl.build :country, name: "Canada" }
    it { expect(country.name).to eq "Canada" }
  end

  context "with set name" do
    it { expect(country.name).to eq 'USA' }
  end

  # it { expect(country).to ensure_inclusion_of(:name).in_range(2..15) }
end
