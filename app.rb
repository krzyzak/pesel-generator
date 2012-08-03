require "sinatra"
require "rpg"

get "/" do
  erb :index
end

get "/about" do
  @active = "about"
  erb :about
end

post "/generate" do
  @gender = params[:gender].to_sym if params[:gender]
  begin
    @pesel = Rpg::Pesel.new(date: params[:date], gender: @gender).generate
    erb :result
  rescue
    erb :error
  end
end