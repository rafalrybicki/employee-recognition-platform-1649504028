require 'rails_helper'

RSpec.describe 'Working with kudos' do
  let!(:receiver) { create(:employee) }
  let(:giver) { create(:employee) }

  before do
    # sign_in receiver
    sign_in giver
  end

  it 'allows user to perform CRUD operations around his kudos' do
    visit root_path

    click_link 'Create New Kudo'
    fill_in 'Title', with: 'Kudo title'
    fill_in 'Content', with: 'Kudo content'

    click_button 'Create Kudo'

    expect(page).to have_content 'Kudo was successfully created.'
    expect(page).to have_content 'Kudo title'

    click_on 'Edit'

    fill_in 'Title', with: 'Kudo title edited'
    click_button 'Update Kudo'

    expect(page).to have_content 'Kudo was successfully updated.'
    expect(page).to have_content 'Kudo title edited'
    click_on 'Back'

    click_on 'Destroy'

    expect(page).to have_content 'Kudo was successfully destroyed.'
  end
end
