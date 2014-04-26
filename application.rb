require 'sinatra/base'

class Application < Sinatra::Application

  def initialize(app=nil)
    super(app)
  end

  get '/' do
    erb :index, locals: { list_of_cats: DB[:cats].to_a }
  end

  get '/cats/new' do
    erb :new
  end

  post '/cats' do
    DB[:cats].insert(params[:cat])
    redirect '/'
  end
end