require 'rails_helper'

describe Project do
  it { should validate_presence_of :name }
  it { should validate_presence_of :description}
  it { should validate_presence_of :github_url }
  it { should validate_presence_of :live_url}
end
