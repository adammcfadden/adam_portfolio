require 'rails_helper'

describe 'The deleting projects path' do
  it 'will let the user delete a project' do
    user_login
    test_skill = FactoryGirl.create(:skill)
    test_project = FactoryGirl.create(:project_skill)
    @user.projects.push(test_project)
    @user.skills.push(test_skill)
    visit project_path(test_project)
    click_on "Delete Java"
    expect(page).to have_content('Java Deleted')
  end
end

describe 'The editing projects path' do
  it 'will let the user add a project, will display the project on the root index' do
    user_login
    test_skill = FactoryGirl.create(:skill)
    test_project = FactoryGirl.create(:project_skill)
    @user.projects.push(test_project)
    @user.skills.push(test_skill)
    visit project_path(test_project)
    click_on "Edit Java"
    fill_in 'project_name', with: 'Ruby'
    fill_in 'project_description', with: 'It\'s a gem of a language'
    click_on 'Update Project'
    expect(page).to have_content('Ruby')
  end
  it 'will return an error if a field is left empty' do
    user_login
    test_skill = FactoryGirl.create(:skill)
    test_project = FactoryGirl.create(:project_skill)
    @user.projects.push(test_project)
    @user.skills.push(test_skill)
    visit project_path(test_project)
    click_on "Edit Java"
    fill_in 'project_name', with: ''
    click_on 'Update Project'
    expect(page).to have_content('An error occured')
  end
end
