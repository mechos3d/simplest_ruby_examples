require './my_app'
use Rack::Reloader # это уже опционально подключаемые middleware - обновляет измененный контент без рестарта сервера.

run MyApp.new

# start with rackup config.ru
# starts by default on port 9292
# Example from here: http://rubylearning.com/blog/2013/04/02/whats-rack/