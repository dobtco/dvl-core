require 'spec_helper'

describe 'Smoke test', type: :feature do
  it 'it visits all pages in the docs' do
    visit '/'

    sidebar_links = all('.sidebar_nav li a').map do |a|
      a.text
    end

    sidebar_links.each do |link|
      click_link link
    end
  end
end
