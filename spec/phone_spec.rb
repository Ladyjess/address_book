require "rspec"
require "contact"
require "phone"

describe Phone do

  before do
    Phone.clear
  end
  describe "#save" do
    it "saves a new phone number" do
      test_phone = Phone.new(5035551122)
      test_phone.save
      expect(Phone.all).to eq [test_phone]
    end
  end

  describe '.all' do
    it 'list all numbers' do
      expect(Phone.all).to eq []
    end
  end

  describe '.clear' do
    it 'empties the array' do
      test_phone = Phone.new(5031112234)
      test_phone.save
      expect(Phone.clear).to eq []
    end
  end

  describe '#set_id' do
    it "returns a contact's information" do
      test_phone = Phone.new(5559990000)
      test_phone.save
      expect(test_phone.set_id).to eq 2    #.info_collection
    end
  end

  describe '#id' do
    it 'returns unique id' do
      test_phone = Phone.new(5551112234)
      test_phone.save
      expect(test_phone.id).to eq 1
    end
  end

  describe '#add_number' do
    it 'allows users to add numbers' do
      test_phone = Phone.new(5559990000)
      test_contact = Contact.new({:name => "Mariana", :phone_number => 5559990000, :email_address => "mariana@gmail.com", :address => "789 Walnut Street Portland,OR 97212", :id => 6})
   end
 end

  describe '.find' do
    it "returns the information for a contact" do
      test_phone = Phone.new(5559990000)
      test_phone.save
      test_phone2 = Phone.new(5557770000)
      test_phone2.save
      expect(Phone.find(test_phone.id)).to eq (test_phone)
    end
  end

end
