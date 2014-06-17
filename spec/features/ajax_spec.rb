require "spec_helper"

feature "A dummy app exists" do
  scenario "User visits a homepage" do
    visit "/"
    expect(page).to have_text("I am the test site")
  end
end

feature "User can request json data" do
  scenario "User request chair information", js: true do
    visit "/"
    wait_for_ajax
  end
end
