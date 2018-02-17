system "clear"
require 'json'

def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end


#1 Assignment
def display_name_phone
    read_contacts.map { |var| puts "#{var[:name]}=>#{var[:phone]}" }
end

#2.1 Assignment

def take_special
  read_contacts.select { |var|
    if var[:phone].include?("+1")
      puts var[:phone]
    end}
end

#2.2 Assignment
def take_special_email
  read_contacts.select { |var|
    if var[:email].include?(".org")
      puts var[:email]
    end}
end

#3.1 Assignment
def amount_of_phones
  x=read_contacts.select { |var|
    var[:phone].include?("+1")}
    puts x
  x.reduce(0) {|key, value| puts value.length-1}
end

#3.2 Assignment
def amount_of_emails
  x=read_contacts.select { |var|
    var[:email].include?(".org")}
    puts x
  x.reduce(0) {|key, value| puts value.length-1}
end

amount_of_emails
