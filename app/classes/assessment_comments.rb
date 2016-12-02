class AssessmentComments
  attr_reader :assessment

  def initialize(assessment)
    @assessment = assessment
  end

  def results
    {
      head: head,
      body: body
    }
  end

  private

  def head
    result = []
    assessment.feedbacks.each do |feedback|
      result << feedback.user.full_name
    end
    result
  end

  def body
    result = []
    assessment.user.department.skills.each do |skill|
      result << [skill.description, *skill_comment(skill.id)]
    end
    result
  end

  def skill_comment(skill)
    result = []
    assessment.feedbacks.each do |feedback|
      result << SkillFeedback.find_by(feedback: feedback, skill: skill).comment
    end
    result
  end
end
