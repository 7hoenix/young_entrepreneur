require "rails_helper"

RSpec.feature "User signs up" do
  context "Unauthenticated user" do
    scenario "signs up" do
      visit root_path
      click_on "Sign up"
      fill_in "Email", with: "justin@example.com"
      fill_in "Password", with: "password"
      click_on "Sign up"

      expect(current_path).to eq(User.last)
      expect(page).to have_content("justin@example.com")
    end
  end
end
