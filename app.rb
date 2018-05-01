require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    binding.pry
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    binding.pry
  end

  get '/:operation/:number1/:number2' do
  end
end
