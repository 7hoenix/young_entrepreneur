require "rails_helper"

RSpec.feature "User logs in" do
  xcontext "Unauthenticated user" do
    scenario "logs in with valid credentials" do
      visit root_path
      click_on "Login"
      fill_in "Email", with: "justin@example.com"
      fill_in "Password", with: "password"
      click_on "Login"

      expect(current_path).to eq(User.last)
    end
  end
end
