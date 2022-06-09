# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

p 'popo is, a girl'.split(/[, ]+/)

class EmailAddressParser
    attr_accessor :emails
    def initialize emails 
        @emails = emails
    end
    def parse
        emails.split(/[, ]+/).uniq        
        
    end

end

test_parser = EmailAddressParser.new("person@somewhere.org john@doe.com, person@somewhere.org") 
p test_parser.parse