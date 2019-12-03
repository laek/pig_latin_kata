# Develop your work so far to treat 'qu' as a special case, so that those words
# end in 'quay'
# e.g. quick -> ickquay
#      quilt -> iltquay
#      qat   -> atqay

def pig_latin(word)
  if word.chr == "a" || word.chr == "e" || word.chr == "i" || word.chr == "o" || word.chr == "u"
    return word + "way"
  elsif word[0..1] == "qu"
    return word[2..-1] + word[0..1] + "ay"
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
assert_equal(pig_latin('quick'), 'ickquay')
assert_equal(pig_latin('quilt'), 'iltquay')
assert_equal(pig_latin('qat'), 'atqay')
