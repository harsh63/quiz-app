# frozen_string_literal: true

class Question
  attr_accessor :content, :category
  def initialize(content, category)
    @content = content
    @category = category
  end

  def present
    puts content.yellow
  end
end
