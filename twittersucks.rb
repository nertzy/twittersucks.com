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
  @search = Twitter::Search.new('"twitter sucks" OR twittersucks').to_a
  erb :index
end
