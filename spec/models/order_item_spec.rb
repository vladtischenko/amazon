require 'spec_helper'

describe OrderItem do
  let(:order_item) { FactoryGirl.create :order_item }

  it { expect(order_item).to belong_to :book }
  it { expect(order_item).to belong_to :order }
  it { expect(order_item).to validate_presence_of :price }
  it { expect(order_item).to validate_presence_of :quantity }
end
