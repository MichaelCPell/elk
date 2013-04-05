get "/sms/:id" do 
  erb :"sms/show.xml"
end

post "/sms" do 
  puts params.to_s
  @post = Post.create(name: params[:body])
  erb :"sms/show.xml"
end
