# frozen_string_literal: true

require_relative 'raw_data'
require_relative 'quiz'
require_relative 'answer'
require 'colorize'

RawData::QUESTION_BANK.each do |data|
  MCQ.new(data[:question], data[:category], data[:wrong_answer], data[:right_answer])
  Answer.new(data[:right_answer])
end
username = gets.chomp
User.create(username)

quiz = Quiz.new(MCQ.all, Answer.sheet)

quiz.mcqs.shuffle.each do |mcq|
  mcq.question.present
  mcq.option.present

  index = gets.chomp.to_i

  User.save_answer(mcq.option.values[index - 1]) if index.between?(1, 4)
end

quiz.check

puts "Thanks, #{User.username}"

puts "Your score is #{User.check_score(RawData::QUESTION_BANK.length)}"
