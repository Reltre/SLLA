require "rails_helper"

feature "User Log Out" do
  scenario "with correct credentials" do
    admin_log_in
    click_link "Log Out"
    expect(page).to have_text "Find A Protest Near You"
  end
end
