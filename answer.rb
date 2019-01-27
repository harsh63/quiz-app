class Answer
  @@answers = []
  def initialize(answer)
    @@answers << answer
  end

  def all
    @@answers
  end
end