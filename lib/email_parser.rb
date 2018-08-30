# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  @emails = []
  def initialize(string)
    @email_string = string
  end

  def parse
    delimiters = [" ", ","]
    # splits email string along delimiters
    @emails = @email_string.split(Regexp.union(delimiters))
    # deletes empty array indices
    @emails.delete_if do |email|
      email == ""
    end
    @emails.uniq
  end
end
