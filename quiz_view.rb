require_relative 'raw_data'
require_relative 'quiz'

RawData::QUESTION_BANK.each do |data|
  MCQ.new(data[:question], data[:category], data[:wrong_answer], data[:right_answer])
  Answer.new(data[:right_answer])
end

quiz = Quiz.new(MCQ.all)

quiz.mcqs.shuffle.each do |mcq|
  puts mcq.question.content
  puts mcq.question.category
  puts mcq.option.values.shuffle
end

# puts MCQ.all
# puts Answer.all

# MCQ.all.each do |data|
#   puts data.question.inspect
#   puts data.option.shuffle!
#   puts data.option.inspect
# end

# puts quiz.mcq.question.all

# puts quiz.mcq.option.all

# puts quiz.answer.all
