require "sinatra"
require "rpg"

get "/" do
  @foo = "bar"
  erb :index
end

post "/generate" do
  @gender = params[:gender].to_sym if params[:gender]
  @pesel = Rpg::Pesel.new(date: params[:date], gender: @gender).generate
  erb :result
end