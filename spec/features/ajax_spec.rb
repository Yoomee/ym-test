require "spec_helper"

# describe 'some stuff which requires js', :js => true do
#   it 'will use the default js driver'
#   it 'will switch to one specific driver', :driver => :webkit
# end

feature "A dummy app exists" do
  scenario "User visits a homepage" do
    visit "/"
    expect(page).to have_text("I am the test site")
  end

end
