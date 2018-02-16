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

display_name_phone
