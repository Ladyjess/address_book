require "rspec"
require "contact"


describe Contact do

  before do
    Contact.clear
  end

  describe 'name' do
    it 'adds name to list' do
      test_contact = Contact.new({:name => "Amy", :phone_number => 5551234567, :email_address => "amy@gmail.com", :address => "123 Walnut Street Portland,OR 97212", :id => 4})
      test_contact.save
      expect(test_contact.name).to eq "Amy"
    end
  end

  describe "#save" do
   it "saves a new contact" do
     test_contact = Contact.new({:name => "Amy", :phone_number => 5551234567, :email_address => "amy@gmail.com", :address => "123 Walnut Street Portland,OR 97212", :id => 4})
     test_contact.save
     expect(Contact.all).to eq [test_contact]
   end
  end

  describe ".all" do
   it "empty at first" do
     expect(Contact.all).to eq []
   end
  end

  describe '.clear' do
    it 'empties the array' do
      test_contact = Contact.new({:name => "Amy", :phone_number => 5551234567, :email_address => "amy@gmail.com", :address => "123 Walnut Street Portland,OR 97212", :id => 4})
      test_contact.save
      expect(Contact.clear).to eq []
    end
  end

  describe '#id' do
    it 'gives the contacts an id' do
      test_contact = Contact.new({:name => "Beyonce", :phone_number => 5551234567, :email_address => "beyonce@gmail.com", :address => "456 Walnut Street Portland,OR 97212", :id => 1})
      test_contact.save
      expect(test_contact.id).to eq 1
    end
  end


  describe '.find_contact' do
    it 'returns the name of contact' do
      test_contact = Contact.new({:name => "Mariana", :phone_number => 5559990000, :email_address => "mariana@gmail.com", :address => "789 Walnut Street Portland,OR 97212", :id => 1})
      test_contact.save
      test_contact2 = Contact.new({:name => "Sophia", :phone_number => 5559991111, :email_address => "sophia@gmail.com", :address => "123 Walnut Street Portland,OR 97212", :id => 3})
      test_contact.save
      expect(Contact.find_contact(1)).to eq test_contact
    end
  end
end











  #
  # describe "add_contact" do
  #   it 'adds a new friend to a specific user(contact)'
  #   test_contact = Contact.new("Gabriel")
  #   new_friend =
  # end
