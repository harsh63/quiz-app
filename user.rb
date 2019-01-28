# frozen_string_literal: true

# User class
class User
  @user_answers = []
  @score = 0
  @username = ''
  def self.create(username)
    @username = username
  end

  class << self
    attr_accessor :username, :user_answers
  end

  def self.check_score(no_of_ques)
    @score = @score * 10 / no_of_ques
  end

  def self.increase_score
    @score += 10
  end

  def self.save_answer(answer)
    @user_answers << answer
  end

  def self.answer(index)
    @user_answers[index]
  end
end
