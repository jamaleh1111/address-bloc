require_relative "entry.rb"

class AddressBook
    attr_accessor :entries
    
    def initialize
        @entries = []
    end
    
    def add_entry(name, phone, email)
<<<<<<< HEAD
    
=======
        
>>>>>>> assignment-21
        index = 0
        @entries.each do |entry|
            
            if name < entry.name
                break
            end
            index += 1
        end
        
        @entries.insert(index, Entry.new(name, phone, email))
    end
<<<<<<< HEAD
=======
    
    def remove_entry(entry)
        entry.delete
    end
>>>>>>> assignment-21
end