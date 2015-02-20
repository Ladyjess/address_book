require 'pry'
require 'sinatra'
require 'sinatra/reloader'
also_reload './lib/**/*.rb'
require './lib/contact.rb'
require './lib/phone.rb'
require './lib/address.rb'
require './lib/email.rb'
require 'pry'


get '/' do
@contacts = Contact.all
erb :index
end

post '/contacts' do
  @name = params[:name]   #params.fetch("name")
  Contact.new({ :name => @name }).save
  @contacts = Contact.all
  redirect '/'
end

get '/contact/:id' do
  @contact = Contact.find_contact(params[:id].to_i)
  erb :contact
end

post '/contact' do
  name = params[:name]
  phone_number = params[:phone_number]
  phone_number = Phone.new(phone_number)
  phone_number.save
  mail_address = params[:mail_address]
  mail_address = Address.new(mail_address)
  mail_address.save
  email_address = params[:email_address]
  email_address = Email.new(email_address)
  email_address.save
  @contact = Contact.new({ :name => @name })
  @contact.save
  @contact.add_number(phone_number)
  @contact.add_address(mail_address)
  @contact.add_email(email_address)
  @contacts = Contact.all
  erb :contact
end
