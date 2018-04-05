require "rails_helper"

feature "User Log In" do
  scenario "with correct credentials" do
    admin_log_in
    expect(page).to have_text "Moderate Suggested Events"
  end

  scenario "with icorrect credentials", js: true do
    user = User.create(email: "example@example.com", password: "password")
    user.password = "12345"
    admin_log_in(user)
    save_and_open_page
    expect(page).to have_text "No such user found."
  end
end
