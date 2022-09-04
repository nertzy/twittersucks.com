require 'rubygems'
require 'sinatra/base'
require 'padrino-helpers'
require 'twitter'
require 'rinku'

client = Twitter::REST::Client.new do |config|
  config.consumer_key    = ENV.fetch("TWITTER_CONSUMER_KEY")
  config.consumer_secret = ENV.fetch("TWITTER_CONSUMER_SECRET")
end

helpers do
  include Padrino::Helpers
end

get '/' do
  @search = client.search('"twitter sucks" OR twittersucks', result_type: "recent")
  erb :index
end

