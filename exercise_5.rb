# Develop your work so far to handle sentences
# e.g. "The quick fox jumped over the lazy dog" ->
#      "Ethay ickquay oxfay umpedjay overway ethay azylay ogday"

def pig_latin_sentence(sentence)
  word_array = sentence.split

  new_array = word_array.map {|each_word| pig_latin(each_word)}.join(" ")
end


def pig_latin(word)
  if word[0] == "a" || word[0] == "e" || word[0] == "i" || word[0] == "o" || word[0] == "u"
    if word[0] >= 'A' && word[0] <='Z'
      return word.capitalize + "way"
    else
      return word + "way"
    end

  elsif word[0..1] == "qu"
      return word[2..-1] + word[0..1] + "ay"

  elsif word[0..1] == "Qu"
      return word[2..-1].capitalise + word[0..1].downcase + "ay"


  elsif word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u"
      if word[2] != "a" && word[2] != "e" && word[2] != "i" && word[2] != "o" && word[2] != "u"

        if word[0] >= 'A' && word[0] <='Z'
          return word[3..-1].capitalize + word[0..2].downcase + "ay"
        else
          return word[3..-1] + word[0..2] + "ay"
        end

      else
        if word[0] >= 'A' && word[0] <='Z'
          return word[2..-1].capitalize + word[0..1].downcase + "ay"
        else
          return word[2..-1] + word[0..1] + "ay"
        end
      end

  else
    if word[0] >= 'A' && word[0] <='Z'
      return word[1..-1].capitalize + word[0].downcase + "ay"
    else
      return word[1..-1] + word[0] + "ay"
    end
  end
end


## Tests:

require_relative './helpers/assert_equal'
assert_equal(
  pig_latin_sentence('The quick fox jumped over the lazy dog'),
  'Ethay ickquay oxfay umpedjay overway ethay azylay ogday'
)
