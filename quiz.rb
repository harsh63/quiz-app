# frozen_string_literal: true

require_relative 'mcq'
require_relative 'user'
class Quiz
  attr_accessor :mcqs, :answer_sheet
  def initialize(mcqs, answer_sheet)
    @mcqs = mcqs
    @answer_sheet = answer_sheet
  end

  def check
    User.answers.each do |answer|
      User.increase_score if answer_sheet.include?(answer)
    end
  end
end
