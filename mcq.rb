require_relative 'question'
require_relative 'option'
class MCQ
  attr_accessor :question, :option
  @@mcqs = []
  def initialize(question, category, wrong_answer, right_answer)
    @question = Question.new(question, category)
    @option = Option.new(wrong_answer, right_answer)
    @@mcqs << self
  end

  def self.all
    @@mcqs
  end
end
