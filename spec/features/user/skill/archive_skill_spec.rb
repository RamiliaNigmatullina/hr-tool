require "rails_helper"

feature "Archive Skill" do
  include_context "current user signed in"

  let(:skill) { create :skill, :senior_dev_skill }

  scenario "User arhives skill" do
    visit skills_path(skill)

    click_link "Архивировать"

    expect(page).to have_content "Навык был успешно заархивирован"
    expect(page).not_to have_content skill.title
  end
end
