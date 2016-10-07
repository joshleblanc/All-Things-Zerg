module Site
  module Helpers
    
    def render_page(page, layout=true)
      haml :"pages/#{page}", layout: layout
    end

    def render_partial(page)
      haml :"partials/#{page}", layout: false
    end
    
    def render_build(page)
      render_partial "builds/#{page}"
    end

    def render_terran_build(page)
      render_partial "scouting/terran/#{page}"
    end

    def render_protoss_build(page)
      render_partial "scouting/protoss/#{page}"
    end

    def render_zerg_build(page)
      render_partial "scouting/zerg/#{page}"
    end

    def render_opener(page)
      render_partial "openers/#{page}"
    end

    def script(file)
      "<script srf='#{file}'></script>"
    end
    
    def css(file)
      "<link rel='stylesheet' type='text/css' href='#{file}'/>"
    end

  end
end
