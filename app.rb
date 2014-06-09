require 'pry'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require_relative 'models/contact'

get '/' do
  @contacts= Contact.all
  erb :index
end

get '/contact/:id' do
  @contact = Contact.all.find(params[:id])
    # binding.pry
  erb :show
end
