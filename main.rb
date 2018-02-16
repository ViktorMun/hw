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

display_name_phone

take_special
