require 'rails_helper'

describe 'The deleting projects path' do
  it 'will let the user delete a project' do
    test_skill = Skill.create(name: "Java", description: "A programming language")
    test_project = Project.create(name: "Java", description: "A programming language", github_url: "https://atom.io/packages/spotify-linux", live_url: "https://atom.io/packages/spotify-linux", skill_id: test_skill.id )
    visit project_path(test_project)
    click_on "Delete Java"
    expect(page).to have_content('Java Deleted')
  end
end

describe 'The editing projects path' do
  it 'will let the user add a project, will display the project on the root index' do
    test_skill = Skill.create(name: "Java", description: "A programming language")
    test_project = Project.create(name: "Java", description: "A programming language", github_url: "https://atom.io/packages/spotify-linux", live_url: "https://atom.io/packages/spotify-linux", skill_id: test_skill.id )
    visit project_path(test_project)
    click_on "Edit Java"
    fill_in 'project_name', with: 'Ruby'
    fill_in 'project_description', with: 'It\'s a gem of a language'
    click_on 'Update Project'
    expect(page).to have_content('Ruby')
  end

  it 'will return an error if a field is left empty' do
    test_skill = Skill.create(name: "Java", description: "A programming language")
    test_project = Project.create(name: "Java", description: "A programming language", github_url: "https://atom.io/packages/spotify-linux", live_url: "https://atom.io/packages/spotify-linux", skill_id: test_skill.id )
    visit project_path(test_project)
    click_on "Edit Java"
    fill_in 'project_name', with: ''
    click_on 'Update Project'
    expect(page).to have_content('An error occured')
  end
end
