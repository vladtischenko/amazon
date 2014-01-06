require 'spec_helper'

describe Category do
  let(:category) { FactoryGirl.create :category }

  it { expect(category.title.size).to be_between 2, 15 }
  it "has many books" do
    expect(category).to have_many :books
  end
end
