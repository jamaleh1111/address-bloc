require_relative "entry.rb"
require "csv"

class AddressBook
  attr_accessor :entries
  
  def initialize
    @entries = []
  end
  
  def add_entry(name, phone, email)
    index = 0
    @entries.each do |entry|
        
      if name < entry.name
        break
      end
<<<<<<< HEAD
        index += 1
=======
      index += 1
>>>>>>> checkpoint-23-csv
    end
    @entries.insert(index, Entry.new(name, phone, email))
  end
  
  def import_from_csv(file_name)
    csv_text = File.read(file_name)
    csv = CSV.parse(csv_text, headers: true)
    csv.each do |row|
        row_hash = row.to_hash
        add_entry(row_hash["name"], row_hash["phone_number"], row_hash["email"])
    end
    return csv.count
  end
 
  def remove_entry(entry)
      @entries.delete(entry)
  end
end