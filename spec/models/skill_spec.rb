require 'rails_helper'

describe Skill do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description}

  it 'will summarize a description of text over 100 char' do
    skill = FactoryGirl.create(:skill, description: "Wes Anderson dreamcatcher occupy Echo Park, vinyl freegan flannel you probably haven't heard of them +1 American Apparel. Cornhole street art seitan lomo Kickstarter.")
    skill.summarize.should eq "Wes Anderson dreamcatcher occupy Echo Park, vinyl freegan flannel you probably haven't heard of them +1 ..."
  end
  it 'will return description if under 100 char' do
    skill = FactoryGirl.create(:skill, description: "asserting that an attribute")
    skill.summarize.should eq "asserting that an attribute"
  end
end
