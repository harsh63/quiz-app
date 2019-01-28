# frozen_string_literal: true

class Option
  attr_accessor :values
  def initialize(wrong_answer, right_answer)
    @values = wrong_answer
    @values << right_answer
  end

  def present
    values.shuffle!.each_with_index do |option, index|
      puts "#{index + 1}) #{option}"
    end
  end
end
