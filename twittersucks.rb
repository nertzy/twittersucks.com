require 'rubygems'
require 'sinatra/base'
require 'padrino-helpers'
require 'twitter'

configure :production do
  require 'newrelic_rpm'
end

helpers do
  include Padrino::Helpers
end

get '/' do
  @search = Twitter.search('"twitter sucks" OR twittersucks').statuses
  erb :index
end

