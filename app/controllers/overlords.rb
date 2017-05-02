require_relative 'base.rb'

module Site
  module Routes
    class Overlords < Base

      show = lambda do 
        @map_images = Dir.glob('./public/img/maps/2017S3/*').map do |path|
          {
            name: File.basename(path).gsub('_', ' ').chomp('.jpg'),
            path: path[8..-1]
          }
        end
        render_page :overlords
      end

      get '/overlords', &show
    end
  end
end