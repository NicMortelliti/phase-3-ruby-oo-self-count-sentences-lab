require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    # Pipes are "or" operators. "\"s are escape characters.
    # "/" represent the start and end of a reg. expression
    # "reject" method will remove blanks from returned array
    string_array = self.split(/\.|\?|!/).reject { |s| s.empty? }
    string_array.count
  end
end