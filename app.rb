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
    binding.pry
    @repeat = params[:number].to_i.times do
        return params[:phrase]
    end
    "#{@repeated}."
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    "#{@final}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      params[:number1].to_i * params[:number2].to_i
    when 'divide'
      params[:number1].to_i / params[:number2].to_i
    end
  end
end
