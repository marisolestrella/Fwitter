require "./config/environment"
require "./app/models/tweet"

class ApplicationController < Sinatra::Base
  
  post '/new_tweet' do
    Tweet.new(params[:username], params[:message])
    @all_tweets = Tweet.all
    erb :index
  end
  
  configure do
    set :public_folder, "public"
    set :views, "app/views"
  end
  
  get "/" do
    marisols_tweet = Tweet.new("marisol", "Hi I'm a Arsenal fan!")
    jims_tweet = Tweet.new("jim", "Hi I'm Jim!")
    @all_tweets = Tweet.all
    puts @all_tweets
     erb :index
  end
  
  # make a new route for "post "/new_tweet"
  # in that route, create a new instance of the tweet with the data from params
  # load up all the tweets into an instance variable
  # render the index page
  
end