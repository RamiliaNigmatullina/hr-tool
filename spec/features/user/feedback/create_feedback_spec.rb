require "rails_helper"

feature "Create Feedback" do
  describe "#create" do
    include_context "current user signed in"

    let(:assessment) { create :assessment, :apply_for_senior_dev }

    before do
      create :invite, user: current_user, assessment: assessment
      5.times { create :skill, department: assessment.user.department }
    end

    scenario "user creates feedback" do
      visit invites_path

      click_link "Создать отзыв"
      Skill.where(department: assessment.user.department).count.times do |n|
        fill_in "feedback[skill_feedbacks_attributes][#{n}][comment]", with: "comment"
        choose "feedback[skill_feedbacks_attributes][#{n}][score]"
      end
      click_button "Сохранить"

      expect(page).to have_content "Отзыв был успешно создан"
    end
  end
end
