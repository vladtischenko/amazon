require 'spec_helper'

describe Customer do
  let(:customer) { FactoryGirl.create :customer }

  it { expect(customer).to validate_presence_of :firstname }
  it { expect(customer).to validate_presence_of :lastname }
  it { expect(customer).to validate_presence_of :email }
  it { expect(customer).to validate_presence_of :password }
  it { expect(customer).to validate_confirmation_of :password }
  
  it { expect(customer).to have_many :orders }

  it "send compare_email_password" do
    # customer.password = customer.email
    expect(customer).to receive :compare_email_password
    customer.save
  end
end
