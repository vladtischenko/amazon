require 'spec_helper'

describe CreditCard do
  let(:credit_card) { FactoryGirl.create :credit_card }

  it { expect(credit_card.firstname.size).to be_between 2, 10 }
  it { expect(credit_card.lastname.size).to be_between 2, 10 }
  it { expect(credit_card.expiration_month.size).to be_between 3, 8 }

  context "belongs to" do
    it { expect(credit_card).to belong_to :customer }
    it { expect(credit_card).to belong_to :order }
  end
end
