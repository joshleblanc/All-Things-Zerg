module Site
  module Routes
    class Base < Sinatra::Application
      configure do
        set :views, 'app/views'
        set :root, App.root
        set :session_secret, 
      end
    end
  end
end
