require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse!
  end

  get  '/square/:number' do
    @number=params[:number].to_i*params[:number].to_i
    @number.to_s
  end

  get '/say/:number/:phrase' do
    @num=params[:number].to_i
    @phrase=params[:phrase]

    erb :phrase
  end

end
