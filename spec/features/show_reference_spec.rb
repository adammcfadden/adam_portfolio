require 'rails_helper'

describe 'Showing References path' do
  it 'will let a user view references', js: true do
    user_login
    test_reference = FactoryGirl.create(:reference, user_id: @user.id)
    visit user_path(@user)
    click_on "Show References"
    expect(page).to have_content(test_reference.name)
  end
end
