# Develop your proram to handle multiple consonants at the start of words.
#
# The rule is:
# If the word starts with one or more consonants, move them to the end.
# e.g. cram     -> amcray
#      sprinkle -> inklespray
#
# Still assume the words are lowercase.

def pig_latin(word)
  if word.chr == "a" || word.chr == "e" || word.chr == "i" || word.chr == "o" || word.chr == "u"
    return word + "way"
  elsif word[1] != "a" && word[1] != "e" && word[1] != "i" && word[1] != "o" && word[1] != "u"
      if word[2] != "a" && word[2] != "e" && word[2] != "i" && word[2] != "o" && word[2] != "u"
        return word[3..-1] + word[0..2] + "ay"
      else
        return word[2..-1] + word[0..1] + "ay"
    end
  else 
    return word[1..-1] + word.chr + "ay"
  end
end

## Tests:

require_relative './helpers/assert_equal'
assert_equal(pig_latin('cram'), 'amcray')
assert_equal(pig_latin('sprinkle'), 'inklespray')
assert_equal(pig_latin('dog'), 'ogday')
assert_equal(pig_latin('up'), 'upway')
