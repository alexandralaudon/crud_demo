require 'spec_helper'
require 'capybara/rspec'

Capybara.app = Application

feature 'Homepage' do
  scenario 'sees cats that have been created' do
    visit '/'
    visit '/cats/new'
    fill_in 'cat[name]', with: 'Siamese'
    fill_in 'cat[color]', with: 'White'
    fill_in 'cat[kittens]', with: 4
    click_on 'Create Cat'
    expect(page).to have_content 'Siamese'
  end
end