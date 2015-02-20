class Address
  attr_reader :mail_address
  @@all_addresses= []

  def initialize(mail_address)
    @mail_address = mail_address
    @id = set_id
  end

  def save
    @@all_addresses.push(self)
  end

  def self.all
    @@all_addresses
  end

  def self.clear
    @@all_addresses = []
  end

  def set_id
    @@all_addresses.length + 1
  end

  def id
    @id
  end

  def self.find(an_address)
    found_address = nil
    @@all_addresses.each do |address|
      if address.id == an_address
        found_address = address
      end
    end
    found_address
  end
end
