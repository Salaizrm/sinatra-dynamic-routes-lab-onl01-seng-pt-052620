require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    erb :reverse_name
  end

  get '/square/:number' do
    erb :square_number
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}" * @number.to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @oper = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @oper
      when "add"
        (@num1 + @num2).to_i
      when "subtract"
        (@num1 - @num2).to_i
      when "multiply"
        (@num1 * @num2).to_i
      when "divide"
        (@num1 / @num2).to_i
    end
  end
end
