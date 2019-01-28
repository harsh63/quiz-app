require_relative 'user'
class Checker
  attr_accessor :user_answers, :answer_sheet
  def initialize(answer_sheet, user_answers)
    @answer_sheet = answer_sheet
    @user_answers = user_answers
  end

  def self.check
    user_answers.each do |answer|
      User.increase_score if answer_sheet.contains?(answer)
    end
  end
end