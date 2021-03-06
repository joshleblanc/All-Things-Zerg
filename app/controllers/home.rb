require_relative 'base.rb'

module Site
  module Routes
    # Routing for main page
    class Home < Base

      show = lambda do
        render_page :home
      end

      get '/', &show
    end
  end
end