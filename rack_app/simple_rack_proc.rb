require 'rack'

my_rack_proc = lambda { |env| [200, {}, ["Hello. The time is #{Time.now}"]] }

Rack::Handler::WEBrick.run my_rack_proc, :Port => 9876

# Example from here: http://rubylearning.com/blog/2013/04/02/whats-rack/
