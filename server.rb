# Sinatra Server (by Suriyaa Kudo)

## Required gems
require 'sinatra'
require 'json'

## Main Page
get '/' do
  "Hello World"
end

## Payload page
get '/payload' do
  "payload"
end

## I want my server to listen to POST requests, at /payload, because that's where I told GitHub my webhook URL was.
post '/payload' do
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"
end
