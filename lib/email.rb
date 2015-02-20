class Email
  attr_reader :email_address
  @@all_emails= []

  def initialize(email_address)
    @email_address = email_address
    @id = set_id
  end

  def save
    @@all_emails.push(self)
  end

  def self.all
    @@all_emails
  end

  def self.clear
    @@all_emails = []
  end

  def set_id
    @@all_emails.length + 1
  end

  def id
    @id
  end

  def self.find(an_email)
    found_email = nil
    @@all_emails.each do |email|
      if email.id == an_email
        found_email = email
      end
    end
    found_email
  end
end
