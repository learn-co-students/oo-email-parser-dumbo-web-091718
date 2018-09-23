# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :email_list
  # @@all = []

  def initialize(email_list)
    @email_list = email_list
    # @@all << self
  end

  # def self.all
  #   @@all
  # end

  def parse
    cut_commas = self.email_list.gsub(",", "")
    emails = cut_commas.split(" ")
    emails.uniq
  end
end
