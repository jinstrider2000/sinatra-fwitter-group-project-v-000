require "cgi"

module Slugifiable

  module InstanceMethods
    def slug
      CGI.escape(self.username.downcase).gsub("+","-")
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      self.all.find { |object| object.slug == slug  }
    end
  end

end
