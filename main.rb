require 'sinatra'
require 'sinatra/base'
require 'haml'

module Site
  # Entry class
  class App < Sinatra::Application
    Dir['./app/helpers/*.rb'].each { |file| require file }
    Dir['./app/controllers/*.rb'].each { |file| require file }

    use Routes::Home
    use Routes::Overlords
  end
end
