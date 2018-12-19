require "sinatra"
# require "sinatra/contrib"

get "/" do
  "Hello, World!"
end

get "/books" do
  "Hello, Books!"
end

get "/movies" do
  "Hello, Movie!"
end

get "/techs" do
  "Hello, Tech!"
end

post "/techs" do
  "create new tech"
end

put "/techs/:id" do
  @tech = Product.find_by_id(params[:id])

  if @tech
    @tech.name = "Macbook Pro"
    @tech.save
  else
    halt 404, "Product not found"
  end

  200
end

delete '/techs/:id' do
  @tech = Product.find_by_id(params[:id])

  if @tech
    @tech.destroy
  else
    halt 404, "Product not found"
  end

  200
end