require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description}
  it { should validate_presence_of :github_url }
  it { should validate_presence_of :live_url}
  it { should belong_to :user}
  it { should belong_to :skill}

  it 'will summarize a description of text over 100 char' do
    project = FactoryGirl.create(:project_skill, description: "Wes Anderson dreamcatcher occupy Echo Park, vinyl freegan flannel you probably haven't heard of them +1 American Apparel. Cornhole street art seitan lomo Kickstarter.")
    project.summarize.should eq "Wes Anderson dreamcatcher occupy Echo Park, vinyl freegan flannel you probably haven't heard of them +1 ..."
  end
  it 'will return description if under 100 char' do
    project = FactoryGirl.create(:project_skill, description: "asserting that an attribute")
    project.summarize.should eq "asserting that an attribute"
  end
end
