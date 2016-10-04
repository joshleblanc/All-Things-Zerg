module Site
  module Helpers
    
    def render_page(page, layout=true)
      haml :"pages/#{page}", layout: layout
    end

    def render_partial(page)
      haml :"partials/#{page}", layout: false
    end

    def script(file)
      "<script srf='#{file}'></script>"
    end
    
    def css(file)
      "<link rel='stylesheet' type='text/css' href='#{file}'"
    end
  end
end
