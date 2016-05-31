# @param {String} s
# @return {String}
def reverse_vowels(s)
  vowels = %w( a e i o u A E I O U )
  chars = s.split("")
  vowel_chars = chars.select { |c| vowels.include?(c) }
  chars.map { |c| vowels.include?(c) ? vowel_chars.pop : c }.join("")
end

reverse_vowels("hello") # => "holle"
