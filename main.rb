require 'sinatra'
require 'sinatra/base'
require 'haml'

module Site
  class App < Sinatra::Application
    Dir['./App/Helpers/*.rb'].each { |file| require file }
    Dir['./App/Controllers/*.rb'].each { |file| require file }

    use Routes::Home
  end
end
