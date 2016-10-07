module Site
  module Helpers
    
    def render_page(page, layout=true)
      haml :"pages/#{page}", layout: layout
    end

    def render_partial(page)
      haml :"partials/#{page}", layout: false
    end

    def render_terran_build(page)
      haml :"partials/scouting/terran/#{page}", layout: false
    end

    def render_protoss_build(page)
      haml :"partials/scouting/protoss/#{page}", layout: false
    end

    def render_zerg_build(page)
      haml :"partials/scouting/zerg/#{page}", layout: false
    end

    def script(file)
      "<script srf='#{file}'></script>"
    end
    
    def css(file)
      "<link rel='stylesheet' type='text/css' href='#{file}'"
    end

  end
end
