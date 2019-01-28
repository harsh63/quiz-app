# frozen_string_literal: true

# Answer class
class Answer
  @@answers = []
  def initialize(answer)
    @@answers << answer
  end

  def self.sheet
    @@answers
  end
end
