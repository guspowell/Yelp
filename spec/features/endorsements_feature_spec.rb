require 'rails_helper'

feature 'endorsing reviews' do
  before do
    kfc = Restaurant.create(name: 'KFC')
    kfc.reviews.create(rating: 3, thoughts: 'It was an abomination')
  end

  scenario 'a user can click endorse which increments the endorsement count by one', js: true do
    visit '/restaurants'
    click_link 'Endorse'
    expect(page).to have_content("1 endorsement")
  end

end
