get '/' do
  erb :"index.html"
end

get '/posts' do 
  erb :"index.html"
end

get '/posts/new' do 
  puts "Why in the world?"
  erb :"new.html"
end

get '/posts/:id' do 
  @post = Post.get(params[:id])

  erb :"show.html"
end

post '/posts' do 
  @post = Post.create(name: params[:name])
  redirect "/posts/#{@post.id}"
end



