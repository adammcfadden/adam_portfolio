require 'rails_helper'

describe User do
  it { should have_many :references}
  it { should have_many :projects}
  it { should have_many :skills}
  it { should have_many :posts}
  it { should have_many :comments}

  it 'will summarize a description of text over 100 char' do
    user_login
    @user.update(description: "Wes Anderson dreamcatcher occupy Echo Park, vinyl freegan flannel you probably haven't heard of them +1 American Apparel. Cornhole street art seitan lomo Kickstarter.")
    @user.summarize.should eq "Wes Anderson dreamcatcher occupy Echo Park, vinyl freegan flannel you probably haven't heard of them +1 ..."
  end
  it 'will return description if under 100 char' do
    user_login
    @user.update(description: "asserting that an attribute")
    @user.summarize.should eq "asserting that an attribute"
  end
  it "will return true if an entire address is not present" do
    user_login
    @user.update(street_address: "121 example lane")
    @user.address_checker.should eq true
  end
  it "will return false if an entire address is present" do
    user_login
    @user.update(street_address: "121 example lane", state: "OR", city: "portland", zip: "97227")
    @user.address_checker.should eq false
  end
end
