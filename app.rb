require('sinatra')
require('sinatra/reloader')
require('pry')
require('./lib/coin_combo')
also_reload('lib/**/*.rb')

get('/') do
  erb (:index)
end

get('/coins') do
  @coins = params.fetch('change').coin_combo()
  erb(:coins)
end
