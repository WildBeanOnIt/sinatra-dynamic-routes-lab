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
end