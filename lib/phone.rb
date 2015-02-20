class Phone
  attr_reader :phone_number
  @@all_numbers = []

  def initialize(phone_number)
    @phone_number = phone_number
    @id = set_id
  end

  def save
    @@all_numbers.push(self)
  end

  def self.all
    @@all_numbers
  end

  def self.clear
    @@all_numbers = []
  end

 def set_id
   @@all_numbers.length + 1
 end

 def id
   @id
 end

 def self.find(a_number)
   found_number = nil
   @@all_numbers.each do |number|
     if number.id == a_number.to_i
       found_number = number
     end
   end
   found_number
 end
end
