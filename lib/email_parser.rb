# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require 'pry'

class EmailAddressParser 
  
  attr_accessor :email_addresses
  @@all = []
  

  def initialize(email_addresses)
    @email_addresses = email_addresses 
  end 
  
  def parse 
    # binding.pry
    if !@@all.each{|x| x == @email_addresses.split(/\, |\ /)}
      @@all << @email_addresses.split(/\, |\ /)
    end
  end  
  
end 
