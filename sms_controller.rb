get "/sms/:id" do 
  erb :"sms/show.xml"
end

post "/sms" do 
  @post = Post.create(name: params[:Body])
  erb :"sms/show.xml"
end
