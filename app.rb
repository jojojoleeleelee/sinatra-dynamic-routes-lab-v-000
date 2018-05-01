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

  get '/say/:number/:phrase' do
    @repeated = (params[:phrase].join(" ") * params[:number].to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    "#{@final}"
  end

  get '/:operation/:number1/:number2' do
  end
end
