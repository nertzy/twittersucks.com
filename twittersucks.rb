require 'rubygems'
require 'sinatra/base'
require 'padrino-helpers'
require 'twitter'

helpers do
  include Padrino::Helpers
end

get '/' do
  @search = Twitter.search('"twitter sucks" OR twittersucks').statuses
  erb :index
end

