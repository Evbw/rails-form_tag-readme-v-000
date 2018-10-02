require 'rails_helper'

describe 'new post' do
  it 'ensures that the form route works with the /new action' do
    visit new_path_post
    expect(page.status_code).to eq(200)
  end

  it 'renders HTML in the /new template' do
    visit new_path_post
    expect(page).to have_content('Post Form')
  end
end
