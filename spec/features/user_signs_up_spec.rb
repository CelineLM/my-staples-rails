require 'rails_helper'

feature 'User signs up' do
  scenario 'successfully' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', with: 'someone@example'
    fill_in 'Username', with: 'Someone'
    fill_in 'Password', with: 'Password123'
    click_on 'Sign up'

    expect(page).to have_content 'MY STAPLES LIST'
  end
end