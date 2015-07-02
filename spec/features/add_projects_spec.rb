require 'rails_helper'

describe 'The adding projects path' do
  # it 'will let the user add a project, will display the project on the root index' do
  #   test_skill = Skill.create(name: "Java", description: "A programming language")
  #   test_skill.save
  #   visit new_project_path
  #   fill_in 'project_name', with: 'Elven Sword'
  #   fill_in 'project_description', with: 'A Game'
  #   fill_in 'project_github_url', with: 'http://stackoverflow.com/questions/9843435/rails-3-2-and-bootstrap-how-do-i-create-a-inline-form'
  #   fill_in 'project_live_url', with: 'http://stackoverflow.com/questions/9843435/rails-3-2-and-bootstrap-how-do-i-create-a-inline-form'
  #   find("option[value='1']").click
  #   click_on 'Create Project'
  #   expect(page).to have_content('A Game')
  #   expect(page).to have_content('Elven Sword')
  #   expect(page).to have_content('Java')
  # end

  it 'will return an error if a field is left empty' do
    visit new_project_path
    fill_in 'project_name', with: 'Ruby'
    click_on 'Create Project'
    expect(page).to have_content('An error occured')
  end
end
