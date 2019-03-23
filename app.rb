require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
  end
  
  get '/square/:number' do
    (params[:number].to_i. ** 2).to_s
  end
  
  get '/say/:number/:phrase' do
    
    say = ''
    
    params[:number].to_i.times do
      say += params[:phrase]
    end
    
    say
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5'
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

end