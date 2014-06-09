require 'spec_helper'

feature 'manage Shapes' do
  scenario 'user can create and show list of shapes' do
    visit '/'
    expect(page).to have_content 'Welcome'
    click_on 'Add Shape'
    fill_in 'Name', with: 'rectangle'
    fill_in 'Number of sides', with: 4
    click_on 'Create Shape'
    expect(page).to have_content 'rectangle'
    expect(page).to have_content 4

  end
end