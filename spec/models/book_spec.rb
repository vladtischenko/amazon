require 'spec_helper'

describe Book do
  let(:book) { FactoryGirl.create :book }

  it { expect(book.description.size).to be_between 10, 50 }
  it { expect(book).to validate_numericality_of :price }
  it { expect(book.title.size).to be_between 2, 15 }
  it { expect(book.description.size).to be_between 10, 50 }
  # it { expect(book).to ensure_inclusion_of(:in_stock).in_array([true, false]) }
  it "belongs to author" do
    expect(book).to belong_to :author
  end
  it { expect(book).to have_one :category }
  it { expect(book).to have_one :rating }
end
