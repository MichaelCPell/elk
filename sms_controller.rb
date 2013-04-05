get "/sms/:id" do 
  erb :"sms/show.xml"
end

post "/sms" do 
  puts params
  @post = Post.create(name: params[:body])
  redirect "/sms/#{@post.id}"
end
