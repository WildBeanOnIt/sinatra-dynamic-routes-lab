require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name]
    "#{@reversename}".reverse
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
      "#{@square}"
  end

  get "/say/:number/:phrase" do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]    
      end
    answer
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @wordone = params[:word1]
    @wordtwo = params[:word2]
    @wordthree = params[:word3]
    @wordfour = params[:word4]
    @wordfive = params[:word5]
    "#{@wordone} #{@wordtwo} #{@wordthree} #{@wordfour} #{@wordfive}."
  end

  get "/:operation/:number1/:number2" do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = "unable to make this work"

    case params[:operation]
    when "add"
      answer = (number1 + number2).to_s
    when "subtract"
      answer = (number1 - number2).to_s
    when "multiply"
      answer = (number1 * number2).to_s
    when "divide"
      answer = (number1 / number2).to_s
    end
  end

end