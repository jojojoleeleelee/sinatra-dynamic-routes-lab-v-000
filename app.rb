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
    @repeated = params[:number].to_i.times do
      print "#{params[:phrase]} "
    end
    "#{@repeated}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    "#{@final}"
  end

  get '/:operation/:number1/:number2' do
    binding.pry
    case params[:operation]
    when 'add'
      params[:number1] + params[:number2]
    params[:number1].to_i
  end
end
