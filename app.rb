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


end