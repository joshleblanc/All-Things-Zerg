require 'sinatra'
require 'sinatra/base'
require 'haml'

module Site
  class App < Sinatra::Application
    Dir['./app/helpers/*.rb'].each { |file| require file }
    Dir['./app/controllers/*.rb'].each { |file| require file }
  end
end
