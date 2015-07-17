require 'rails_helper'

describe 'Adding Comments path' do
  pending 'will let a user add a comment', js: true do
    user_login
    test_post = FactoryGirl.create(:post, user_id: @user.id)
    visit user_path(@user)
    click_on "Add Comment"
    expect(page).to have_content("Create Comment")
    fill_in "comment_body", with: "Commenty Test"
    click_on "Create Comment"
    expect(page).to have_content("Commenty Test")
    expect(page).to have_content("Commented By:")
  end
end
