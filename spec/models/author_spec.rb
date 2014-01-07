require 'spec_helper'

describe Author do
  let(:author) { FactoryGirl.create :author }
  it { expect(author).to validate_presence_of(:firstname) }
  it { expect(author).to validate_presence_of(:lastname) }

  context "with set fields" do
    it { expect(author.firstname).to_not be_empty }
    it { expect(author.lastname).to_not be_empty }
  end
  context "with exactly fields" do
    let(:author) { FactoryGirl.build :author, firstname: 'Andrey', lastname: 'Kvasin' }
    it { expect(author.firstname).to eq 'Andrey' }
    it { expect(author.lastname).to eq 'Kvasin' }
  end
  it { expect(author).to have_many :books }
end
