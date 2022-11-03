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
    punctuation = [".", "?", "!"]
    # checks each character individually and takes the index of that character to see if it matches a character
    # in the punctuation array. If it matches, and the value of the next index(character) does not match
    # any value in the punctuation array, it adds 1 to the total sentences.
    # self.chars.each.with_index do |char, index|
    #   if punctuation.include?(char) && !punctuation.include?(self[index + 1])
    #     sentences += 1
        # puts char
        # puts index
        # puts index+1
        # binding.pry

      word_array = self.split(" ")
      filter_word_array = word_array.filter do |word|
        word.end_with?(".") || word.end_with?("?") || word.end_with?("!")
      end
      filter_word_array.count
    end
end