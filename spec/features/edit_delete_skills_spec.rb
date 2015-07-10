require 'rails_helper'

describe 'The deleting skills path' do
  it 'will let the user delete a skill, will display the skill on the root index' do
    test_skill = FactoryGirl.create(:skill)
    visit skill_path(test_skill)
    click_on "Delete Java"
    expect(page).to have_content('Java Deleted')
  end
end

describe 'The editing skills path' do
  it 'will let the user add a skill, will display the skill on the root index' do
    test_skill = FactoryGirl.create(:skill)
    visit skill_path(test_skill)
    click_on "Edit Java"
    fill_in 'skill_name', with: 'Ruby'
    fill_in 'skill_description', with: 'It\'s a gem of a language'
    click_on 'Update Skill'
    expect(page).to have_content('Ruby')
  end
  it 'will return an error if a field is left empty' do
    test_skill = FactoryGirl.create(:skill)
    visit skill_path(test_skill)
    click_on "Edit Java"
    fill_in 'skill_name', with: ''
    click_on 'Update Skill'
    expect(page).to have_content('An error occured')
  end
end
