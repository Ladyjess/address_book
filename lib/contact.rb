class Contact
 attr_reader :name, :phones, :emails, :addresses, :id
 @@all_contacts = []

 def initialize(attributes)
   @name = attributes[:name]
   @phones = []
   @addresses = []
   @emails = []
   @id = @@all_contacts.length + 1
 end

 def save
   @@all_contacts.push(self)
 end

 def self.all
   @@all_contacts
 end

 def self.clear
   @@all_contacts = []
 end

 def id
  @id
 end

 def add_number(number)
   @phones.push(number)
 end

 def add_address(new_address)
   @addresses.push(new_address)
 end

 def add_email(new_email)
   @emails.push(new_email)
 end

 def self.find_contact(identification)
   found_contact = nil
   @@all_contacts.each do |contact|
     if contact.id == identification
       found_contact = contact
     end
   end
   found_contact
 end
end



#
# def add_contact(new_friend)
#   @new_contacts.push(new_friend)
# end
