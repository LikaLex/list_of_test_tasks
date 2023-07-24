# frozen_string_literal: true

def word_break(s, dict)
  scan_dictionary(s, dict).join.split(//).sort == s.split(//).sort
end

def word_break_keeping_order(s, dict)
  scan_dictionary(s, dict).join('') == s
end

def scan_dictionary(string, dictionary)
  dictionary.each_with_object([]) { |item, found_words| found_words << string.scan(item) }
end

s = 'wednesdaythursday'
s_with_wrong_order = 'fridaywednesday'
dict = %w[monday tuesday wednesday thursday friday saturday sunday]

# According to the assignment, it is not clear whether the words in the dictionary should follow each other
# or just have to be there.
# Therefore, both versions are implemented.

# Order doesn't matter
puts word_break(s, dict) # true
puts word_break(s_with_wrong_order, dict) # true
# Order matters
puts word_break_keeping_order(s, dict) # true
puts word_break_keeping_order(s_with_wrong_order, dict) # false
