require 'rubygems'
require 'sinatra'
require 'twitter'
require 'action_view'

helpers do
  include Rack::Utils
  include ActionView::Helpers::DateHelper
  alias_method :h, :escape_html
end

get '/' do
  @search = Twitter.search('"twitter sucks" OR twittersucks').statuses
  erb :index
end
