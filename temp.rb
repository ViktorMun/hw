system "clear"
require 'json'
def read_contacts
  contacts_json = File.read("contacts.json")
  return JSON.parse(contacts_json, { symbolize_names: true })
end

def amount_of_string_characters_in_a_test_array
  x=read_contacts.select { |var|
    var[:email].include?(".org")}
puts x
x.reduce(0) {|key, value| puts value.length-1}

end
 puts amount_of_string_characters_in_a_test_array # => 16
