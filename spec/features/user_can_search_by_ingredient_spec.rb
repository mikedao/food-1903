require "rails_helper"

describe 'a user can find info' do
  it 'about a specific food' do
    visit '/'
    fill_in 'q', with: 'sweet potatoes'
    click_on 'Search'
    expect(current_path).to eq ('/foods')
    expect(page).to have_content('Results: 531')
    expect(page).to have_css('.foods', count: 10)
    within (first('.foods')) do
      expect(page).to have_css('.ndb_number')
      expect(page).to have_css('.name')
      expect(page).to have_css('.food_group')
      expect(page).to have_css('.data_source')
      expect(page).to have_css('.manufacturer')
    end
  end
end
