# frozen_string_literal: true

# this module has raw data
module RawData
  QUESTION_BANK = [
    {
      question: 'A fruit seller had some apples. He sells 40% apples and still
      has 420 apples. Originally, he had:',
      category: 'Percentages',
      wrong_answer: ['588 apples', '600 apples', '672 apples'],
      right_answer: '700 apples'
    },
    {
      question: "What percentage of numbers from 1 to 70 have 1 or 9 in the
      unit/'s digit?",
      category: 'Percentages',
      wrong_answer: %w[1 14 21],
      right_answer: '20'
    },
    {
      question: 'If 20% of a = b, then b% of 20 is the same as:',
      category: 'Percentages',
      wrong_answer: ['5% of a', '20% of a', 'None of these'],
      right_answer: '4% of a'
    },
    {
      question: 'What was the day of the week on 28th May, 2006?',
      category: 'Calender',
      wrong_answer: %w[Thursday Friday Saturday],
      right_answer: 'Sunday'
    },
    {
      question: 'What was the day of the week on 17th June, 1998?',
      category: 'Calender',
      wrong_answer: %w[Monday Tuesday Thursday],
      right_answer: 'Wednesday'
    }
  ].freeze
end
