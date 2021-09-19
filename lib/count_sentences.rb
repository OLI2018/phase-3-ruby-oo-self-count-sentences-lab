require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false 
    end

  def question?
    self.end_with?("?") ? true : false 
  end

  def exclamation?
    self.end_with?("!") ? true : false 
  end

  def count_sentences

     sentences = 0
     punctuation = [".", "?", "!"]
     self.chars.each.with_index do |char, index|
       if punctuation.include?(char) && !punctuation.include?(self[index + 1])
        sentences += 1
      end
    end
    sentences
  end
end

#binding.pry