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

end
