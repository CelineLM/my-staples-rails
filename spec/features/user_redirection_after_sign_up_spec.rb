require 'rails_helper'

feature 'Redirection to new_group_path after signing up' do
  scenario 'successfully' do
    visit root_path
    click_on 'Sign up'
    fill_in 'Email', with: 'someone@example'
    fill_in 'Username', with: 'Someone'
    fill_in 'Password', with: 'Password123'
    click_on 'Sign up'
    
    expect(page).to have_current_path('group/new')
  end
end