require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @new = params[:name].reverse
    erb :reversename
  end

  get '/square/:number' do
    @square = (params[:number].to_i) ** 2 
    erb :square 
  end
  
  get '/say/:number/:phrase' do 
<<<<<<< HEAD
    @words = params[:phrase] * (params[:number].to_i)
=======
    @words = params[:phase] * params[:number]
>>>>>>> 68e07e4ff52f49d4affb804707fcf21dac550b57
    erb :say 
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
<<<<<<< HEAD
    @word_list = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
=======
    @word_list = params[:word1] + params[:word2] + params[:word3] + params[:word4] + params[:word5]
>>>>>>> 68e07e4ff52f49d4affb804707fcf21dac550b57
    erb :say
  end
    
  get '/:operation/:number1/:number2' do 
<<<<<<< HEAD
    if params[:operation] == "add"
      @answer = (params[:number1].to_i) + (params[:number2].to_i)
    elsif params[:operation] == "subtract"
      @answer = (params[:number1].to_i) - (params[:number2].to_i)
    elsif params[:operation] == "multiply"
      @answer = (params[:number1].to_i) * (params[:number2].to_i)
    elsif params[:operation] == "divide"
      @answer = (params[:number1].to_i) / (params[:number2].to_i)     
=======
    if params[:operation] == "+"
      @answer = (params[:number1].to_i) + (params[:number2].to_i)
    elsif params[:operation] == "-"
      @answer = (params[:number1].to_i) - (params[:number2].to_i)
    elsif params[:operation] == "*"
      @answer = (params[:number1].to_i) * (params[:number2].to_i)
    elsif params[:operation] == "/"
      @answer = (params[:number1].to_i) / (params[:number2].to_i)
    elsif params[:operation] == "**"
      @answer = (params[:number1].to_i) ** (params[:number2].to_i)
    elsif params[:operation] == "%"
      @answer = (params[:number1].to_i) % (params[:number2].to_i)  
    else 
      @answer = "The operation can not be completed."
>>>>>>> 68e07e4ff52f49d4affb804707fcf21dac550b57
    end
    erb :index 
  end
end