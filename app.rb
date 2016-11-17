require('sinatra')
require('./lib/coin')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
get('/') do
  erb(:index)
end

get('/input') do
  @mod = params.fetch('coin_input').to_i.coin()
  erb(:result)
end
