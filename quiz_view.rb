require_relative 'raw_data'
require_relative 'quiz'
require 'colorize'

RawData::QUESTION_BANK.each do |data|
  MCQ.new(data[:question], data[:category], data[:wrong_answer], data[:right_answer])
  Answer.new(data[:right_answer])
end

quiz = Quiz.new(MCQ.all)

quiz.mcqs.shuffle.each do |mcq|
  puts mcq.question.content.yellow

  mcq.option.values.shuffle.each_with_index do |option, index|
    puts "#{index + 1})#{option}"
  end

  user_answer = gets.chomp!

end
