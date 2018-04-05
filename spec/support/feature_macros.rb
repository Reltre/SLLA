module FeatureMacros
  def admin_log_in(user = nil)
    user ||= User.create(email: 'example@example.com', password: 'password', admin: true)
    visit admin_login_path
    expect(page).to have_text "Log In"
    fill_in "email", with: user.email
    fill_in "password", with: user.password
    click_button "Log in"
  end
end