require "rails_helper"

feature "Update Skill" do
  include_context "current user signed in"

  let(:skill) { create :skill, :senior_dev_skill }

  scenario "User updates skill's description" do
    visit edit_skill_path(skill)

    fill_in "skill[title]", with: "Новый навык"
    click_button "Сохранить"

    expect(page).to have_content "Новый навык"
  end
end
