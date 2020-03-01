require './my_app'
require './my_rack_middleware'

use Rack::Reloader # это уже опционально подключаемые middleware - обновляет измененный контент без рестарта сервера.
use MyRackMiddleware

run MyApp.new

# start with rackup config.ru
# starts by default on port 9292
# Example from here: http://rubylearning.com/blog/2013/04/02/whats-rack/
