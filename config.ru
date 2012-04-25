# encoding: utf-8

require 'rubygems'
require 'sinatra'
require 'bundler'
require 'rack-livereload'

Bundler.require

use Rack::LiveReload

ENV['RACK_ENV'] ||= 'development'
ENV['OAHU_ENV'] ||= ENV['RACK_ENV'] 

$LOAD_PATH.unshift ENV['APP_ROOT'] || File.expand_path('..', __FILE__)
$LOAD_PATH.unshift File.join($LOAD_PATH.first, 'lib')

require './app'

map "/" do
  run Sinatra::Application
end




