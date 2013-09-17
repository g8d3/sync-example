require 'spec_helper'

describe 'home page' do
  it 'has a lot of features' do
    using_session :one do
      visit '/tasks'

    end
    using_session :two do
      visit '/tasks'
      should_not have_css '.task'

    end
    using_session :one do
      fill_in :Title, with: 'ads'
      click_button :Save
      save_and_open_page

    end

    using_session :two do
      should have_css '.task', count: 1
      save_and_open_page
    end
  end
end
