get "/sms/:id" do 
  erb :"sms/show.xml"
end

post "/sms" do 
  @post = Post.create(name: params[:body])
  redirect_to "/sms/#{@post.id}"
end
