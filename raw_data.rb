module RawData
  QUESTION_BANK = [
    {
      question: 'Question 1',
      category: 'A',
      wrong_answer: %w[option1 option2 option3],
      right_answer: 'option4'
    },
    {
      question: 'Question 2',
      category: 'B',
      wrong_answer: %w[option2 option1 option4],
      right_answer: 'option3'
    }
  ].freeze
end
