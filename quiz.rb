require_relative 'mcq'
require_relative 'answer'
class Quiz
  attr_accessor :mcqs
  def initialize(mcqs)
    @mcqs = mcqs
  end
end
