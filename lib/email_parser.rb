# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').


class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails= emails
  end

  def parse
    emails.delete(",").split.uniq
  end

end


# a = [ "a", "a", "b", "b", "c" ]
# a.uniq   # => ["a", "b", "c"]
#
# b = [["student","sam"], ["student","george"], ["teacher","matz"]]
# b.uniq { |s| s.first } # => [["student", "sam"], ["teacher", "matz"]]


# Aslo gsub
# str = " the quick brown fox jumped over the quick dog"
#
# p str.gsub 'quick', 'slow'
# # p str.gsub! 'quick', 'slow'
# p str
