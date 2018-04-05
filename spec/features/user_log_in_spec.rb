require "rails_helper"

feature "User Log In" do
  scenario "with correct credentials" do
    admin_log_in
    expect(page).to have_text "Moderate Suggested Events"
  end
end
