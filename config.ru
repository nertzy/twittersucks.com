require 'rubygems'
require 'bundler'
Bundler.require
require 'sinatra'

set :run, false
set :environment, ENV['RACK_ENV']

require './twittersucks'
run Sinatra::Application
