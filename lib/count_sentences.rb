require 'pry'

class String

  def sentence?

    return self.end_with?(".")

  end

  def question?

    return self.end_with?("?")

  end

  def exclamation?

    return self.end_with?("!")

  end

  def count_sentences

    sentence_array = [self]

    sentence_array = remove_periods(sentence_array)
    sentence_array = remove_question(sentence_array)
    sentence_array = remove_exclamation(sentence_array)
    sentence_array.delete("")
    return sentence_array.length

  end

  def remove_periods(sentence_array)
    while sentence_array.join.include?(".") do
      sentence_array.map! do |sentence|
        if sentence.include?(".")
            sentence.split(".")
        else
          sentence
        end
      end.flatten!
    end
    return sentence_array
  end

  def remove_question(sentence_array)
    while sentence_array.join.include?("?") do
      sentence_array.map! do |sentence|
        if sentence.include?("?")
            sentence.split("?")
        else
          sentence
        end
      end.flatten!
    end
    return sentence_array
  end

  def remove_exclamation(sentence_array)
    while sentence_array.join.include?("!") do
      sentence_array.map! do |sentence|
        if sentence.include?("!")
            sentence.split("!")
        else
          sentence
        end
      end.flatten!
    end
    return sentence_array
  end

end
