require_relative 'base.rb'

module Site
  module Routes
    class Home < Base

      show = lambda do 
        render_page :home
      end

      get '/', &show
    end
  end
end