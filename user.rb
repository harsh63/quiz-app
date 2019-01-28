# frozen_string_literal: true

# User class
class User
  @answers = []
  @score = 0
  @username = ''

  def self.create(username)
    @username = username
  end

  class << self
    attr_accessor :username, :answers
  end

  def self.save_answer(answer)
    @answers << answer
  end

  def self.check_score(no_of_ques)
    @score = @score * 10 / no_of_ques
  end

  def self.increase_score
    @score += 10
  end

  def self.answer(index)
    @answers[index]
  end
end
