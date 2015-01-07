require ‘rails_helper’

feature "Manage Beetle" do

  scenario "Use index to see if beetles are not there" do
    visit beetles_path
    expect(page).to have_content(/No Beetles Available/)
  end

  scenario "Use index to see if beetles are there" do
    visit beetles_path
    expect(page).to have_content(/Beetles/)
  end

  scenario "Click on New Beetle link direct user to a new page form" do
    visit beetles_path
    click_on 'New Beetle'
    expect(current_path).to eq(new_beetle_path)
  end

  scenario "Add info in the New Post, click submit and see new post on index page" do
    visit new_beetle_path

    fill_in 'Nickname', with: 'tzeni'
    fill_in 'Address', with: 'Chapel Hill, NC'
    fill_in 'Year', with: '2000'
    fill_in 'Color', with: 'red'
    fill_in 'Engine', with: 'gas'
    fill_in 'Interior', with: 'new'
    click_on 'Create Beetle'
    expect(current_path).to eq(post_path(Beetle.last)) #goes to show page
    click_on 'Back'
    expect(current_path).to eq(beetles_path)
    end

  scenario “Delete a beetle & redirect to index page” do
  beetle = create_beetle
  visit beetles_path(beetle)
  click_on ‘Destroy’
  expect(current_path).to eq(beetles_path)
  expect(beetle_path).to_not have_content(/Test Beetle/)
  end

end
