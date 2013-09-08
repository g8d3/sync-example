require 'spec_helper'

describe 'home page' do
  it 'has a lot of features' do
    visit '/'
    fill_in :Email, with: 'ads'
    save_and_open_page
  end
end
