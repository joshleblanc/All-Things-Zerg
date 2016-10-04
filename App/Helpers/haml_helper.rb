module Site
  module Helpers
    
    def render_page(page, layout=true)
      haml :"pages/#{page}", layout: layout
    end
  end
end
