require 'rails_helper'

describe 'The adding skills path' do
  it 'will let the user add a skill, will display the skill on the root index' do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit new_skill_path
    fill_in 'skill_name', with: 'Ruby'
    fill_in 'skill_description', with: 'It\'s a gem of a language'
    click_on 'Create Skill'
    expect(page).to have_content('Ruby')
  end

  it 'will return an error if a field is left empty' do
    user = FactoryGirl.create(:user)
    login_as(user)
    visit new_skill_path
    fill_in 'skill_name', with: 'Ruby'
    click_on 'Create Skill'
    expect(page).to have_content('An error occured')
  end
end
