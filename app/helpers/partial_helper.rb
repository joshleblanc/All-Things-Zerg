module Site
  module Helpers

    def render_build_item(head, meta, desc, extra)
      @head = head
      @meta = meta
      @desc = desc
      @extra = extra
      
      render_partial :build_item
    end
  end
end