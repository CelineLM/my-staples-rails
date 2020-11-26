require 'rails_helper'

feature 'User signs up without a group' do
  scenario 'successfully' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', with: 'someone@example'
    fill_in 'Username', with: 'Someone'
    fill_in 'Password', with: 'Password123'
    click_on 'Sign up'
    click_on 'Wait to be added to a group'

    expect(page).not_to have_content 'MY STAPLES LIST'
    expect(page).not_to have_content 'Sign up'
    expect(page).to have_content 'Wait for your home group to add you'
    expect(page).to have_content 'Create a new group'
  end
end