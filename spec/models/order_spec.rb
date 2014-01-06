require 'spec_helper'

describe Order do
  let (:order) { FactoryGirl.create :order }

  it { expect(order).to belong_to :customer }
  it { expect(order).to validate_presence_of :totalprice }
  it { expect(order).to validate_presence_of :bill_address }
  it { expect(order).to validate_presence_of :ship_address }
  # it { expect(order).to ensure_inclusion_of(:state).in_array [true, false] }
  it "match date" do
    expect(order.completed_at.to_s).to match /^[0-9]{4}-[0-1][0-9]-[0-3][0-9]$/ 
  end
end
