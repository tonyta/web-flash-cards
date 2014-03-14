#Generic Welcome Screen (with login)
get '/' do

end

post '/' do
  @user_info = params
  erb :'login'
end
