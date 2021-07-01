require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end
  get '/square/:number' do
    n=params[:number].to_i
    result = n*n
    result.to_s
end

  get '/say/:number/:phrase' do
    word= ''
    params[:number].to_i.times do
    word+=params[:phrase]
end  
    word
end
 get '/say/:word1/:word2/:word3/:word4/:word5' do
"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end
 get '/:operation/:number1/:number2' do
   n1= params[:number1].to_i
   n2= params[:number2].to_i
   ans = ''
 case params[:operation]
 when 'add'
   (n2+n1).to_s
    when 'subtract'
(n1-n2).to_s
when 'multiply'
 (n1*n2).to_s
when 'divide'
  (n1/n2).to_s
end
end
end