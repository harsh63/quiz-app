class Option
  attr_accessor :values
  def initialize(wrong_answer, right_answer)
    @values = wrong_answer
    @values << right_answer
  end
end
