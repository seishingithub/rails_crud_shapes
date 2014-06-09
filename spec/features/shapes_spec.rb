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

  scenario 'user can edit and update list of shapes' do
    visit '/'
    click_on 'Add Shape'
    fill_in 'Name', with: 'rectangle'
    fill_in 'Number of sides', with: 4
    click_on 'Create Shape'
    click_on 'rectangle'
    expect(page).to have_content 'rectangle'
    expect(page).to have_content 4
    click_on 'Edit Shape'
    fill_in 'Name', with: 'triangle'
    fill_in 'Number of sides', with: 3
    click_on 'Update Shape'
    expect(page).to have_no_content 'rectangle'
    expect(page).to have_no_content 4
    expect(page).to have_content 'triangle'
    expect(page).to have_content 3
  end

  scenario 'user can delete shapes' do
    visit '/'
    click_on 'Add Shape'
    fill_in 'Name', with: 'rectangle'
    fill_in 'Number of sides', with: 4
    click_on 'Create Shape'
    click_on 'rectangle'
    expect(page).to have_content 'rectangle'
    expect(page).to have_content 4
    click_on 'Delete Shape'
    expect(page).to have_no_content 'rectangle'
    expect(page).to have_no_content 4
  end
end